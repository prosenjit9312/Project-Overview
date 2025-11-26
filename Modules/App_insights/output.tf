output "app_insights_id" {
  value = {
    for k, v in azurerm_application_insights.ai :
    k => v.id
  }
}

output "app_insights_instrumentation_key" {
  value = {
    for k, v in azurerm_application_insights.ai :
    k => v.instrumentation_key
  }
}
