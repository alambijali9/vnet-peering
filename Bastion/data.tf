data "azurerm_subnet" "Subnet_ID" {
  depends_on = [ azurerm_subnet.bas_subnet ]
    for_each = var.bastion
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name

}

