#--------------------------------------------*--------------------------------------------
#  Example: Single Resource Group
#--------------------------------------------*--------------------------------------------

provider "azurerm" {
  features {}
}

# module call

module "resource_group" {
  source    = "../../"
  stack     = "test"
  prefixes  = ["az","eus1"]
  suffixes  = ["t","01"]
  location  = "eastus"
  tags      = {
              "environement" = "test"
              "owner"        = "example"
              "project"      =  "example"
              "customer"     = "example"
            }
}

# output

output "resource_group_name" {
  value = module.resource_group.name
}

output "resource_group_location" {
  value = module.resource_group.location
}

output "resource_group_tags" {
  value = module.resource_group.tags
}

output "resource_group_id" {
  value = module.resource_group.id
}

# end
#--------------------------------------------*--------------------------------------------