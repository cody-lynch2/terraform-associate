provider "aws" {
  region = "us-east-2"
}

variable "envs" {
  type    = list(string)
  default = ["dev", "prod"]
}

resource "random_pet" "suffix" {
  length = 2
}

#resource "aws_s3_bucket" "by_count" {
#  count  = length(var.envs)
#  bucket = "tfa-${var.envs[count.index]}-${random_pet.suffix.id}"
#}

#resource "aws_s3_bucket" "by_env" {
#  for_each = toset(var.envs)
#  bucket   = "tfa-${each.key}-${random_pet.suffix.id}"
#}

variable "env_owners" {
  type = map(string)
  default = {
    dev  = "cody"
    prod = "ops-team"
  }
}

resource "aws_s3_bucket" "by_env" {
  for_each = var.env_owners
  bucket   = "tfa-${each.key}-${random_pet.suffix.id}"

  tags = {
    Owner = each.value
  }
}

variable "ingress_ports" {
  type    = list(number)
  default = [80, 443, 8080, 22]
}

resource "aws_security_group" "web" {
  name        = "tfa-dynamic-${random_pet.suffix.id}"
  description = "Dynamic block demo"

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      description = "Port ${ingress.value}"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["10.0.0.0/8"]
    }
  }
}