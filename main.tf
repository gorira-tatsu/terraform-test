terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
  }
}


provider "openstack" {
  user_name   = "admin" 
  password    = "upyDiG6gEmDBAT7Hg8iEtsE1IkSPEvXE"
  tenant_name = "admin"
  auth_url    = "https://192.168.0.7:5000/v3/"
  insecure = true
}

resource "openstack_compute_instance_v2" "example" {
  name            = "example-instance"
  image_name      = "cirros"
  flavor_name     = "m1.small"

  network {
    name = "test"
  }
}

