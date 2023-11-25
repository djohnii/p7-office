resource "openstack_compute_keypair_v2" "devops_key" {
  name       = var.key_name
  region     = var.region
  public_key = file(var.public_key)
}
