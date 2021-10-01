resource "azurerm_network_security_group" "mynsg" {
    name                = "myNetworkSecurityGroup"
    location            = azurerm_resource_group.user29-rg.location
    resource_group_name = azurerm_resource_group.user29-rg.name
    
    security_rule {
        name                       = "SSH-Admin"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"   ## Admin 서버 
        destination_address_prefix = "*"
    }
    security_rule {
                name                    	= "SSH-Jenkins"
                priority                		= 1002
                direction               		= "Inbound"
                access                  		= "Allow"
                protocol                		= "Tcp"
                source_port_range       = "*"
                destination_port_range = "22"
                source_address_prefix   = "40.82.157.161/32"  					# Jenkins IP 등록
                destination_address_prefix      = "*"
        }
    security_rule {
                name                    	= "SSH-homeip"
                priority                		= 1003
                direction               		= "Inbound"
                access                  		= "Allow"
                protocol                		= "Tcp"
                source_port_range       = "*"
                destination_port_range = "22"
                source_address_prefix   = "1.224.240.44/32"  					# 내 접속 IP 등록
                destination_address_prefix      = "*"
        }
 security_rule {
        name                       = "HTTP"
        priority                   = 2001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = "Terraform Demo"
    }
}

