resource "random_string" "resource_group_name" {
  length = 4
  special = false
}

resource "random_string" "storage_account_name" {
  length = 4
  special = false
  upper = false
}

resource "random_string" "acre_name_1" {
  length = 4
  special = false
  upper = false
}

resource "random_string" "acre_name_2" {
  length = 4
  special = false
  upper = false
}

resource "random_string" "acre_group_name" {
  length = 8
  special = false
  upper = false
}
