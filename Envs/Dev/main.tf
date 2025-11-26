module "vnet" {
  source = "../../Modules/virtual_network"
 vnets = var.vnets
}

module "acr" {
  source = "../../Modules/ACR"
  acrs = var.acrs
}
module "aks" {
  source = "../../Modules/AKS"
  akss = var.akss
  
}
 module "log_analytics" {
  source = "../../Modules/Log_analytics"
  log_analytics = var.log_analytics
}

  module "app_insights" {
  source = "../../Modules/App_insights"
  app_insights = var.app_insights
}

 module "key_vault" {
   source = "../../Modules/KeyVault"
 key_vaults = var.key_vaults

  
 }
