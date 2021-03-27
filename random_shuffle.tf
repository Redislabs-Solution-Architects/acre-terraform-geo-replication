resource "random_shuffle" "redisgeek" {
  # Regions with 3 AZs
  input = [
    "Australia East",
    "Central US",
    "East US",
    "North Europe",
    "South Central US",
    "Southeast Asia",
    "UK South",
    "East US 2",
    "East US 2 EUAP",
    "West Europe",
    "West US 2"
  ]
  result_count = 2
}
