data "azuread_service_principal" "redisgeek" {
  application_id = var.client_id
}
