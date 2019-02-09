resource "azurerm_virtual_network" "virtual_network" {
  location            = "${var.virtual_network_resource_group_location}"
  resource_group_name = "${var.virtual_network_resource_group_name}"
  name                = "${var.virtual_network_name}"
  address_space       = "${var.virtual_network_address_space}"
  dns_servers         = "${var.virtual_network_dns_servers}"

  tags {
    environment = "${var.tag_environment}"
    resource    = "${var.tag_resource}"
    owner       = "${var.tag_owner}"
  }
}
