module "instances" {
  for_each = var.instances
  source   = "./ec2"
  name     = each.key
  type     = each.value
}

variable "instances" {
  type        = map(string)
  default = {
    frontend  = "t3.small"
    mongodb   = "t3.small"
    catalogue = "t3.small"
    redis     = "t3.small"
    user      = "t3.small"
    cart      = "t3.small"
    mysql     = "t3.small"
    shipping  = "t3.small"
    rabbitmq  = "t3.small"
    payment   = "t3.small"
  }
}

