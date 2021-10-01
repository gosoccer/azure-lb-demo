resource "azurerm_virtual_network" "user29-net" {
    name = "user29-vnet"
    address_space = ["29.0.0.0/16"]
    location = azurerm_resource_group.user29-rg.location
    resource_group_name = azurerm_resource_group.user29-rg.name
}
