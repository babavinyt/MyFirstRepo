resource "azurerm_container_registry" "acr" {
    for_each = var.jioacr
  name                = each.value.name_acr
  resource_group_name = each.value.name_rg
  location            = each.value.location
  sku                 = each.value.sku
  admin_enabled       = false
  georeplications {
    location                = "East US"
    zone_redundancy_enabled = true
    tags                    = {}
  }
  georeplications {
    location                = "North Europe"
    zone_redundancy_enabled = true
    tags                    = {}
  }
}