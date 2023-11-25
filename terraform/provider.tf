terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.47.0"
    }
     selectel = {
      source  = "selectel/selectel"
      version = "~> 3.8.4"
   }
  }
}
provider "openstack" {
  auth_url    = "https://api.selvpc.ru/identity/v3"
  domain_name = var.account_selectel
  tenant_id   = var.project_id
  user_name   = var.user_openstack
  password    = var.pwd_openstack
  region      = var.region
}
provider "selectel" {
  token = var.token_selectel
}

