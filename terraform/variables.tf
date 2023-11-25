variable "image_id" {
  type = string
  default = "AstraOrel_2.12+net+ssh+rdp_new" # 
  
  
   #Не устанавливаются   "RedOS_7.3+net+ssh+vnc" #"RedOS_7.3.2_ssh_rdp" # - "RedOS_7.2_ssh_rdp" Debian_9+net+ssh
   #устанавливается 

  # "Astra_1.7.3orel_ssh_rdp"
  # "Ubuntu 20.04 LTS 64-bit"  
  # "Debian 11 (Bullseye) 64-bit" 
  #"RedOS_7.3.2_ssh_rdp"
  # Centos 8
  # "Debian 10 (Buster) 64-bit" 
  # "Ubuntu 22.04 LTS 64-bit" 
  # CentOS 7 64-bit
  # Ubuntu 18.04 LTS 64-bit

  #"AltLinuxServer_10.1+net+ssh"

#CentOS_7+net+ssh 
#R7Office
#Debian_9+net+ssh
#RedOS_7.2_ssh_rdp
#Ubuntu_16.04+net+ssh
#Ubuntu_18.04_ssh
#AstraOrel_2.12+net+ssh+rdp
#AltLinuxServer_10+net+ssh
#AltLinuxServer_9.1+net+ssh+vnc
#AltLinuxServer_9.2+net+ssh+vnc


}
variable "volume_type" {
  type = string
  default = "fast.ru-3b"
}
variable "ssh_port" {
  type = string
  default = "2235"
}

variable "flavor_cs" {
  type = string
  default = "RAM1.2-16384"  #"PRC10.4-8192"
}
variable "flavor_ds" {
  type = string
  default = "PRC10.4-8192"
}
variable "flavor_mm" {
  type = string
  default = "PRC10.2-2048"
}
variable "flavor_ms" {
  type = string
  default = "PRC10.2-2048"
}
variable "flavor_elc" {
  type = string
  default = "PRC10.4-8192"
}
variable "region" {
  type = string
  default = "ru-3"
}

variable "avail_zone" {
  type = string
  default = "ru-3b"
}

# the name of the key, which will be in openstack
variable "key_name" {
  type = string
  default = "devops_key_pris2"
}
# the path to the public key
variable "public_key" {
  type = string
  default = "~/.ssh/id_rsa.pub"
}

variable "name_cs" {
  type = string
  default = "pristest-cs"
}

variable "name_ds" {
  type = string
  default = "pristest-ds"
}
variable "name_mm" {
  type = string
  default = "pristest-mm"
}
variable "name_ms" {
  type = string
  default = "pristest-ms"
}
variable "name_elc" {
  type = string
  default = "pristest-elc"
}
variable "size_disk_cs" {
  type = string
  default = "70"
}

variable "size_disk_ds" {
  type = string
  default = "55"
}

variable "size_disk_ms" {
  type = string
  default = "50"
}

variable "size_disk_mm" {
  type = string
  default = "50"
}
variable "size_disk_elc" {
  type = string
  default = "50"
}
variable "network" {
  type = string
  default = "nat"
}
# sensitive variables
variable "token_selectel" {
  type = string
}

variable "user_openstack" {
  type = string
}

variable "pwd_openstack" {
  type = string
}

variable "project_id" {
  type = string
}

variable "account_selectel" {
  type = string
}
variable "domain_name" {
  type = string
}





