resource "azurerm_subnet" "mysub" {
    for_each = var.Subnet
    name = each.value.sub_name
    virtual_network_name = each.value.virtual_network_name
    resource_group_name = each.value.resource_group_name
    address_prefixes = each.value.address_prefixes
  
}