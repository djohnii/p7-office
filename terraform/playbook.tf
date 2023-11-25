resource "local_file" "cs" {
  content = <<-EOT
    # Generated by Terraform.
#     # Generated by Terraform.
---
# Slave | Install mysql
- hosts: slave_db
  gather_facts: true
  vars:
    ansible_python_interpreter: /usr/bin/python3
  roles:
    - { role: install_mysql,
              mysql_repl_role: slavedb }
#Master | Install mysql
- hosts: master_db
  gather_facts: true
  vars:
    ansible_python_interpreter: /usr/bin/python3
  roles:
    - { role: install_mysql,
              mysql_repl_role: master }
- hosts: master_db
  gather_facts: true
  vars:
    ansible_python_interpreter: /usr/bin/python3
  roles:
    - { role: ms,
              mysql_repl_role: master }

- hosts: slave_db
  gather_facts: true
  vars:
    ansible_python_interpreter: /usr/bin/python3
  roles:
    - { role: ms,
              mysql_repl_role: slavedb }

- hosts: ds
  gather_facts: true
  roles:
    - ds
- hosts: cs
  gather_facts: true
  roles:
    - cs
- hosts: ds
  gather_facts: true
  roles:
    - { role: config_cs_ds,
        mysql_repl_role: ds }

- hosts: cs
  gather_facts: true
  roles:
    - { role: config_cs_ds,
        mysql_repl_role: cs}
- hosts: cs, master_db
  gather_facts: true
  roles:
    - { role: config_cs_mysql }
  vars:
    ansible_python_interpreter: /usr/bin/python3
    

    
    EOT
  filename = "cs.yml"
  file_permission = "0644"

  depends_on = [
    openstack_compute_instance_v2.cs_vm,
    openstack_compute_instance_v2.ds_vm,
    openstack_compute_instance_v2.mm_vm,
    openstack_compute_instance_v2.ms_vm
  ]
}
