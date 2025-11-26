variable "app_insights" {
  description = "Map of Application Insights resources"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    application_type    = optional(string, "web")
    workspace_id        = optional(string, null)
  }))
}
