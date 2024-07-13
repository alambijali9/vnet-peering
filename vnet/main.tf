


resource "azurerm_virtual_network" "Virtual_Network" {
  for_each            = var.Vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  address_space       = each.value.address_space


}