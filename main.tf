module "vpc" {
  source = "git::https://github.com/Hari-Develop/training_1"
  for_each = var.vpc
  env = var.env
  subnets = each.value["subnets"]
  cidr_block = each.value["cidr_block"]
}