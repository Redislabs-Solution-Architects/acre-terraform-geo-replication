resource "random_string" "resource_group_name" {
  length = 16
  special = false
}

resource "random_string" "storage_account_name" {
  length = 16
  special = false
}
