# data "azurerm_subscription" "current" {}
data "azurerm_client_config" "current" {}

resource "azurerm_dashboard_grafana" "grafana" {
  name                              = "grafana-poc-2123321"
  resource_group_name               = azurerm_resource_group.primary_automation_dev_rg.name
  location                          = azurerm_resource_group.primary_automation_dev_rg.location
  grafana_major_version             = 11
  api_key_enabled                   = true
  deterministic_outbound_ip_enabled = true
  public_network_access_enabled     = false

  identity {
    type = "SystemAssigned"
  }

  tags = {
    env = "dev"
  }
}

resource "azurerm_role_assignment" "grafana_monitoring_reader" {
#   scope                = data.azurerm_subscription.current.id
  scope                = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
#   scope                = azurerm_resource_group.primary_automation_dev_rg.id
  role_definition_name = "Monitoring Reader"
  principal_id         = azurerm_dashboard_grafana.grafana.identity[0].principal_id
}

resource "azurerm_role_assignment" "grafana-admin" {
  scope                = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
  role_definition_name = "Monitoring Reader"
  principal_id         = var.admin-group
}