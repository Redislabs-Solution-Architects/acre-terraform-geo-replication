resource "random_string" "resource_group_name" {
  length = 4
  special = false
}

resource "random_string" "storage_account_name" {
  length = 4
  special = false
  upper = false
}

resource "random_string" "vnet_name" {
  length = 4
  special = false
  upper = false
}

resource "random_string" "subnet_name" {
  length = 4
  special = false
  upper = false
}

resource "random_string" "nic_name" {
  length = 4
  special = false
  upper = false
}

resource "random_string" "vm_name" {
  length = 4
  special = false
  upper = false
}

resource "random_string" "acre_name" {
  length = 4
  special = false
  upper = false
}

resource "random_string" "private_link_name" {
  length = 4
  special = false
  upper = false
}