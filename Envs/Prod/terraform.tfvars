#   prod = {
#     name                = "prodacr12345"
#     resource_group_name = "rg-prod"
#     location            = "eastus"
#     sku                 = "Premium"
#     admin_enabled       = false
#     public_access       = false
#     tags = {
#       env   = "prod"
#       security = "strict"
#     }
#   }
log2 = {
      name                = "prod-law"
      location            = "Central India"
      resource_group_name = "prod-rg"
      sku                 = "PerGB2018"
      retention_in_days   = 60
    }
     ai2 = {
      name                = "prod-appinsights"
      location            = "Central India"
      resource_group_name = "prod-rg"
      application_type    = "web"
      workspace_id        = "/subscriptions/XXXX/resourceGroups/prod-rg/providers/Microsoft.OperationalInsights/workspaces/prod-law"
    }