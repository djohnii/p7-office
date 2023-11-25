output "node_name_and_ip" {
  value = {
    cs_name = openstack_compute_instance_v2.cs_vm.name
    cs_ip = openstack_compute_instance_v2.cs_vm.access_ip_v4
    ds_name = openstack_compute_instance_v2.ds_vm.name
    ds_ip = openstack_compute_instance_v2.ds_vm.access_ip_v4
    mm_name = openstack_compute_instance_v2.mm_vm.name
    mm_ip = openstack_compute_instance_v2.mm_vm.access_ip_v4
    ms_name = openstack_compute_instance_v2.ms_vm.name
    ms_ip = openstack_compute_instance_v2.ms_vm.access_ip_v4
    elc_name = openstack_compute_instance_v2.elc_vm.name
    elc_ip = openstack_compute_instance_v2.elc_vm.access_ip_v4
    } 
}
