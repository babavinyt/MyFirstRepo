resource "azurerm_resource_group" "rg" {
for_each = var.rgs

  #  name = "vineet-rg" 
   name = each.value.name_rg
  # location  = "eastus"
   location = each.value.location

}