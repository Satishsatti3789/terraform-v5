module "instances" {
  for_each = var.instances
  source   = "./ec2"
  name     = each.key
  type     = each.value
}

variable "instances" {
  type        = map(string)
  default = {
    frontend  = "t2.medium"
    mongodb   = "t2.medium"
    catalogue = "t2.micro"
    redis     = "t2.small"
    user      = "t2.small"
    cart      = "t2.medium"
    mysql     = "t2.medium"
    shipping  = "t2.micro"
    rabbitmq  = "t2.micro"
    payment   = "t2.small"
  }
}

