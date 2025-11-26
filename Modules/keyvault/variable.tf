variable "key_vaults" {
  description = "Map of Key Vault configurations"
  type = map(object({
    name                        = string
    location                    = string
    resource_group_name         = string
    sku_name                    = optional(string, "standard")
    tenant_id                   = string
    purge_protection_enabled    = optional(bool, false)
    soft_delete_retention_days  = optional(number, 7)

    # Access policies (optional list)
    access_policies = optional(list(object({
      tenant_id = string
      object_id = string

      key_permissions = optional(list(string), [])
      secret_permissions = optional(list(string), [])
      certificate_permissions = optional(list(string), [])
      storage_permissions = optional(list(string), [])
    })), [])
  }))
}
