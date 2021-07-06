resource "azurerm_resource_group" "example" {
  name     = "DemoGroup"
  location = "East us"
}
resource "azurerm_availability_set" "example" {
  name                = "Availability1395"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  tags = {
    environment = "Production"
  }
}
