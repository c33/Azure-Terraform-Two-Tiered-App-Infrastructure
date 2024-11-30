#Global Variables 
variable "location" {
  type = string
}


variable "resource_group_name" {
  type = string
}

#Virtual Network Variables
variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

#Subnet Variables

variable "subnets" {
  type = map(object({
    subnet_name       = string
    address_prefixes  = list(string)
    service_endpoints = optional(list(string))
  }))
}

