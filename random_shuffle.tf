resource "random_shuffle" "regions-with-az" {
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
    "centralindia",
    "centralus",
    "eastus",
    "eastus2",
    "northeurope",
    "southcentralus",
    "southeastasia",
    "uksouth",
    "westeurope",
    "westus2"
  ]
  result_count = 2
}

resource "random_shuffle" "region-any" {
  input = [
    "eastus",
    "westeurope",
    "westus",
    "eastus2",
    "westus2",
    "southcentralus",
    "uksouth",
    "southeastasia",
    "australiaeast",
    "northeurope",
    "centralus",
    "centralindia"
  ]
  result_count = 1
}



## List of available regions for the resource type is 'eastus,westeurope,westus,eastus2,westus2,southcentralus,uksouth,southeastasia,australiaeast,northeurope,centralus,centralindia'.
