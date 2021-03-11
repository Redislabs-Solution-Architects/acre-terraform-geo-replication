resource "random_string" "resource_group_name" {
  length = 4
  number = false
  special = false
  upper = false
}

resource "random_string" "storage_account_name" {
  length = 4
  number = false
  special = false
  upper = false
}

resource "random_string" "storage_container_name" {
  length = 4
  number = false
  special = false
  upper = false
}

resource "random_string" "acre_name_1" {
  length = 4
  number = false
  special = false
  upper = false
}

resource "random_string" "acre_name_2" {
  length = 4
  number = false
  special = false
  upper = false
}

resource "random_string" "acre_group_name" {
  length = 8
  number = false
  special = false
  upper = false
}
