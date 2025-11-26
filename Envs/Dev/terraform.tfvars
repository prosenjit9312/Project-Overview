vnets = {
  "vnet1" = {
    name = "dev-vnet"
    rg_name = "pro-rg"
    location = "centralindia"
    address_space = ["10.3.0.0/16"]
    tags = {
        project = "new-infra"
    }
    subnets = [
  { name = "subnet1", address_prefix = "10.3.1.0/24" },
  { name = "subnet2", address_prefix = "10.3.2.0/24" },
  { name = "subnet3", address_prefix = "10.3.3.0/24" },
]
  }
}

akss = {
  aks1 = {
    name       = "aks-cluster-1"
    location   = "East US"
    rg_name    = "pro-rg"
    dns_prefix = "aks1dns"
    default_node_pool = {
      name       = "default"
      node_count = 2
      vm_size = "Standard_D2s_v3"

    }
    identity = {
      type = "SystemAssigned"
    }
    tags = {
      Environment = "dev"
    }
  }

  aks2 = {
    name       = "aks-cluster-2"
    location   = "West US"
    rg_name    = "pro-rg"
    dns_prefix = "aks2dns"
    default_node_pool = {
      name       = "default"
      node_count = 3
      vm_size    =  "Standard_D2s_v3"

    }
    identity = {
      type = "SystemAssigned"
    }
    tags = {
      Environment = "prod"
    }
  }
}

acrs = { 
  dev_acr1 = {
    name                = "devacr12345"
    resource_group_name = "pro-rg"
    location            = "eastus"
    sku                 = "Standard"
    admin_enabled       = true
    public_access       = true
    tags = {
      env   = "dev"
      owner = "prosenjit"
    }
  }
}



log_analytics = {
    log1 = {
      name                = "dev-law"
      location            = "East US"
      resource_group_name = "pro-rg"
      sku                 = "PerGB2018"
      retention_in_days   = 30
    }
  }

  
  app_insights = {
    ai1 = {
      name                = "dev-appinsights"
      location            = "East US"
      resource_group_name = "pro-rg"
      application_type    = "web"
      workspace_id        = null
    }

  }
  
