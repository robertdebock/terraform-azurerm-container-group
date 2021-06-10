resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_container_group" "example" {
  name                = "example-continst-${var.deployment}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  ip_address_type     = "public"
  dns_name_label      = "robert-${var.deployment}"
  os_type             = "Linux"

  container {
    name   = "hello-world"
    image  = "microsoft/aci-helloworld:latest"
    cpu    = "0.1"
    memory = "0.1"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }

  container {
    name   = "sidecar"
    image  = "microsoft/aci-tutorial-sidecar"
    cpu    = "0.1"
    memory = "0.1"
  }

  tags = {
    environment = "testing"
  }

  lifecycle {
    create_before_destroy = true
  }

}
