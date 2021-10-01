resource "azurerm_lb_probe" "user29-lb-probe" {
    resource_group_name = azurerm_resource_group.user29-rg.name
    loadbalancer_id = azurerm_lb.user29-lb.id
    name = "http-probe"
    protocol = "Http"
    request_path = "/"
    port = 80
}
