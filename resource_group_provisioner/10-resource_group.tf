module "resource_group" {
  source = "../shared_modules/modules/resource_group"

  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}