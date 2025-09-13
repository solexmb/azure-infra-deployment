#
# DEV
#

# PRIMARY REGION RESOURCE GROUP
resource "azurerm_resource_group" "primary_automation_dev_rg" {
  name     = "${local.primary_prefix}-dev-rg"
  location = var.location
}

#
# PROD
#

# PRIMARY REGION RESOURCE GROUP
resource "azurerm_resource_group" "automation_prod_rg" {
  name     = "${local.primary_prefix}-prod-rg"
  location = var.location
}
