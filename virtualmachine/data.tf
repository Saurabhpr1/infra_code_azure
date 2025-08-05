data "azurerm_network_interface" "DataNic" {
for_each = var.VM
name = each.value.data_name
resource_group_name = each.value.resource_group_name
}
