


data "azurerm_virtual_network" "example1" {
  name                = "VnetA"
  resource_group_name = "private"
}

data "azurerm_virtual_network" "example2" {
  name                = "VnetB"
  resource_group_name = "private"
}

resource "azurerm_virtual_network_peering" "peer-1" {
  name                      = "peer1to2"
  resource_group_name       =  "private"
  virtual_network_name      = "VnetA"
  remote_virtual_network_id = data.azurerm_virtual_network.example2.id
}

resource "azurerm_virtual_network_peering" "peer-2" {
  name                      = "peer2to1"
  resource_group_name       =  "private"
  virtual_network_name      = "VnetB"
  remote_virtual_network_id = data.azurerm_virtual_network.example1.id
}