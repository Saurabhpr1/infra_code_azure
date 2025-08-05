resource "azurerm_network_interface" "nicrg" {
  for_each = var.NIC
  name = each.value.nic_name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  
  
  ip_configuration {
    name = each.value.ipname
    subnet_id = data.azurerm_subnet.Datasub[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
    # public_ip_address_id = data.azurerm_public_ip.Datapip[each.key].id
  }
}


