data "azurerm_resource_group" "resource_group" {
  name = "${var.virtual_network_resource_group_name}"
}
