resource "azurerm_application_insights" "ai" {
  for_each = var.app_insights

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  application_type = each.value.application_type

  # If you want to attach Log Analytics Workspace
  workspace_id = each.value.workspace_id

  tags = {
    created_by = "terraform"
  }
}
