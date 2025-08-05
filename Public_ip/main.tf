resource "azurerm_public_ip" "PIP" {
  for_each = var.Public
  name = each.value.pubip_name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method = each.value.allocation_method
  sku = each.value.sku
}