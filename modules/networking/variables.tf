variable "vnet_name" {
  type        = string
  description = "Azure Subsription ID"
}

variable "location" {
  type        = string
  description = "Azure Region"
}

variable "resource_group_name" {
  type        = string
  description = "value of the resource group name"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
}

variable "default_tags_network" {
  type = map(string)
  default = {
    Service      = "Networking"
    Environment   = "Dev"
    Project       = "Multi Tier"
    Owner         = "Wasath"
    DeployedByIac = "True"
  }
}
