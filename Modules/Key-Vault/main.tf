resource "azurerm_key_vault" "key vault" {
  name                        = "examplekeyvault"
  location                    = azurerm_resource_group.eastus.location
  resource_group_name         = azurerm_resource_group.vineet-rg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 30
  purge_protection_enabled    = false

  sku_name = "standard"
}
