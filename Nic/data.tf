data "azurerm_subnet" "Datasub" {
    for_each = var.NIC
    name = each.value.Datasubname
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
   
}

# data "azurerm_public_ip" "Datapip" {
#   for_each = var.NIC
#   name  = each.value.datapipname
#   resource_group_name = each.value.resource_group_name
# }