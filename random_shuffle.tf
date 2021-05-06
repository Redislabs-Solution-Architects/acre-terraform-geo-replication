resource "random_shuffle" "redisgeek" {
  # Regions with 3 AZs
  # Region Pairs A -> B
  # N Australia East -> Australia Southeast
  # Y East Us 2 -> Central US
  # Y East Us -> West US
  # Y North Europe -> West Europe
  # N North Central US -> South Central US
  # N East Asia -> Southeast Asia
  # N UK West -> UK South
  # N West US 2 -> West Central US
  input = [
    "australiaeast",
    "centralus",
    "eastus",
    "northeurope",
    "southcentralus",
    "southeastasia",
    "uksouth",
    "eastus2",
    "westeurope",
    "westus2"
  ]
  result_count = 2
}
