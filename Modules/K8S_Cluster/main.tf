resource "azurerm_kubernetes_cluster" "k8s" {
    for_each = var.jiok8s 
  name                = "example-aks1"
  location            = azurerm_resource_group.eastus.location
  resource_group_name = azurerm_resource_group.vineet-rg.name

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}