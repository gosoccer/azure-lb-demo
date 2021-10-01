resource "azurerm_lb" "user29-lb" {
  name = "user29lb"
  location = azurerm_resource_group.user29-rg.location
  resource_group_name = azurerm_resource_group.user29-rg.name
  frontend_ip_configuration {
  name = "user29PublicIPAddress"
  public_ip_address_id = azurerm_public_ip.user29-publicip.id
 }
}
