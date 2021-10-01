resource "azurerm_resource_group" "user29-rg" {
    name     = "user29-rg"
    location = "koreacentral"

    tags = {
        environment = "Terraform Demo"
    }
}
