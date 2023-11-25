
# resource "null_resource" "test_mm" {
#   provisioner "remote-exec" {
#     connection {
#       host = openstack_compute_instance_v2.mm_vm.access_ip_v4
#       user = "root" #root
#       private_key = file("~/.ssh/id_rsa")
#       port = "2235"
#     }

#     inline = ["echo 'connected!'"]
#   }
# }
# resource "null_resource" "test_cs" {
#   provisioner "remote-exec" {
#     connection {
#       host = openstack_compute_instance_v2.cs_vm.access_ip_v4
#       user = "root" #root
#       private_key = file("~/.ssh/id_rsa")
#       port = "2235"
#     }

#     inline = ["echo 'connected!'"]
#   }

# }


# resource "null_resource" "test_ds" {
#   provisioner "remote-exec" {
#     connection {
#       host = openstack_compute_instance_v2.ds_vm.access_ip_v4
#       user = "root"
#       private_key = file("~/.ssh/id_rsa")
#       port = var.ssh_port
#     }

#     inline = ["echo 'connected!'"]
#   }
#   # provisioner "local-exec" {
    
#   #   command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -T 300 -i ../inventory/hosts --user root --private-key ~/.ssh/id_rsa ../test.yml"
#   # }
#   provisioner "local-exec" {
    
#     command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -T 300 -i ../inventory/hosts --user root --private-key ~/.ssh/id_rsa ../cs.yml"
#   }
# }