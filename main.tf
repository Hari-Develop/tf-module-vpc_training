module "vpc" {
  source = "git::https://github.com/Hari-Develop/training_1"
  for_each = var.vpc
  cidr_block = each.value["cidr_block"]
}