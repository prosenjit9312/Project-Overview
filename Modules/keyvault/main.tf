# resource "azurerm_key_vault" "kv" {
#   for_each = var.key_vaults

#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.resource_group_name
#   tenant_id           = each.value.tenant_id
#   sku_name            = each.value.sku_name

#   purge_protection_enabled   = each.value.purge_protection_enabled
#   soft_delete_retention_days = each.value.soft_delete_retention_days

#   tags = {
#     created_by = "terraform"
#   }
# }

# # ------------------------------
# # Access Policies (optional)
# # ------------------------------
# # resource "azurerm_key_vault_access_policy" "kv_policy" {
# #   for_each = {
# #     for kv_key, kv_value in var.key_vaults :
# #     kv_key => kv_value.access_policies
# #   }

# #   key_vault_id = azurerm_key_vault.kv[each.key].id

# #   dynamic "access_policy" {
# #     for_each = each.value

# #     content {
# #       tenant_id = access_policy.value.tenant_id
# #       object_id = access_policy.value.object_id

# #       key_permissions         = access_policy.value.key_permissions
# #       secret_permissions      = access_policy.value.secret_permissions
# #       certificate_permissions = access_policy.value.certificate_permissions
# #       storage_permissions     = access_policy.value.storage_permissions
# #     }
# #   }
# # }
