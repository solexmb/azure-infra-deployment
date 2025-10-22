# data "azurerm_log_analytics_workspace" "law" {
#   count               = var.enable_monitoring ? 1 : 0
#   name                = "cloud-platform-cu-law"
#   resource_group_name = "cloud-platform-cu-rg"
# }