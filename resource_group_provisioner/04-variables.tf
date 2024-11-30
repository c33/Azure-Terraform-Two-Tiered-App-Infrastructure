#Global Variables

variable "location" {
  type = string
}

variable "tags" {
  type = object({
    Architecture = string
    DeployedBy   = string
  })
}

#Resource Group Variables
variable "resource_group_name" {
  type = string
}
