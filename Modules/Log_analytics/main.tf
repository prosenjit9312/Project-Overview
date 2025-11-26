resource "azurerm_log_analytics_workspace" "law" {
  for_each = var.log_analytics

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  sku               = each.value.sku
  retention_in_days = each.value.retention_in_days
  daily_quota_gb    = each.value.daily_quota_gb

  tags = {
    environment = "dev"
    created_by  = "terraform"
  }
}
