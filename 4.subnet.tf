resource "azurerm_subnet" "user29-subnet1" {
    name = "user29-mysubnet1"
    resource_group_name = azurerm_resource_group.user29-rg.name
    virtual_network_name = azurerm_virtual_network.user29-net.name
    address_prefixes = ["29.0.1.0/24"]
}
