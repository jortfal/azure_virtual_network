/* 
Copyright 2020 José Mnauel Ortega Falcón

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. 
*/

resource "azurerm_virtual_network" "this" {
  location            = data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name
  name                = var.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers
  
  dynamic "subnet" {
    for_each = var.subnets
    content {
      name           = subnet.value.name
      address_prefix = subnet.value.address_prefix
    }
  }

  tags = merge(
    {
      "name"     = format("%s", var.name)
      "resource" = "virtual_network"
    },
    var.tags,
  )
}
