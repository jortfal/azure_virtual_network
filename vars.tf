################################################################################################
########                                 Global Variables                               ########
################################################################################################



################################################################################################
########                              Data Input Variables                              ########
################################################################################################

variable "virtual_network_resource_group_name" {
    description = ""
    type        = "string"
}

################################################################################################
########                                 Module Variables                               ########
################################################################################################

variable "virtual_network_name" {
    description = ""
    type        = "string"
}

variable "virtual_network_address_space" {
    description = ""
    type        = "list"
} 

variable "virtual_network_dns_servers" {
    description = ""
    type        = "list"
}

################################################################################################
########                                  Tags Variables                                ########
################################################################################################

variable "tag_environment" {
    description = ""
    default     = "null"
}

variable "tag_resource" {
    description = ""
    default     = "virtual_network"
}

variable "tag_owner" {
    description = ""
    type        = "string"
    default     = "null"
}
