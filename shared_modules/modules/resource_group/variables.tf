variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "tags" {
  type = object({
    Architecture = string
    DeployedBy = string
  })
}