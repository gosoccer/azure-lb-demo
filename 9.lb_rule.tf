resource "azurerm_lb_rule" "lbrule" {
    resource_group_name = azurerm_resource_group.user29-rg.name
    loadbalancer_id = azurerm_lb.user29-lb.id
    name = "http"
    protocol = "Tcp"
    frontend_port = 80
    backend_port = 80
    backend_address_pool_id = azurerm_lb_backend_address_pool.user29-bpepool.id
    frontend_ip_configuration_name = "user29PublicIPAddress"
    probe_id = azurerm_lb_probe.user29-lb-probe.id
}
