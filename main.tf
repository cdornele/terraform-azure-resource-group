#--------------------------------------------*--------------------------------------------
#  Module: Azure Resource Group - Main
#--------------------------------------------*--------------------------------------------

data "azurecaf_name" "this" {
  name          = var.stack
  resource_type = "azurerm_resource_group"
  prefixes      = var.prefixes
  suffixes      = var.suffixes
  passthrough   = var.passthrough
  clean_input   = var.clean_input
  separator     = var.separator
  use_slug      = var.use_slug
}

resource "azurerm_resource_group" "this" {
  name          = data.azurecaf_name.this.result
  location      = var.location
  tags          = var.tags

  lifecycle {
    ignore_changes = [tags]
  }
}

# end
#--------------------------------------------*--------------------------------------------