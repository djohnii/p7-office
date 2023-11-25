resource "openstack_blockstorage_volume_v3" "ms_volume" {
  name              = var.name_ms
  size              = var.size_disk_ms
  image_id          = var.image_id
  availability_zone = var.avail_zone
  volume_type       = var.volume_type
}

resource "openstack_compute_instance_v2" "ms_vm" {
  name              = var.name_ms
  flavor_name       = var.flavor_ms
  key_pair          = openstack_compute_keypair_v2.devops_key.id
  security_groups   = ["default"]
  availability_zone = var.avail_zone

  block_device {
    uuid                  = openstack_blockstorage_volume_v3.ms_volume.id
    source_type           = "volume"
    boot_index            = 0
    destination_type      = "volume"
    delete_on_termination = true
  }

  network {
    name = var.network
  }



}
