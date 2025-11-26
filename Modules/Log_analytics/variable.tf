variable "log_analytics" {
  description = "List of Log Analytics workspaces"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku                 = optional(string, "PerGB2018")
    retention_in_days   = optional(number, 30)
    daily_quota_gb      = optional(number, -1) # -1 means unlimited
  }))
}
