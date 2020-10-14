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

# Global Variables

# Data Sources Input Variables

variable "resource_group_name" {
    description = "The name of resource group to create the virtual network"
    type        = string
}

# Module Variables

variable "name" {
    description = "The name of virtual network"
    type        = string
}

variable "address_space" {
    description = "A list of CIDRs"
    type        = list
    default     = []
} 

variable "dns_servers" {
    description = "A list of DNS Servers IPs"
    type        = list
    default     = []
}

variable "subnets" {
  description = "A list of maps of subnets to create"
  type        = list(map(string))
  default     = []
}

variable "tags" {
  description = "A mapping of tags to assign to security group"
  type        = map(string)
  default     = {}
}
