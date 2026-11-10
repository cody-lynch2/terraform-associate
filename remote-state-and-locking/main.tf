terraform {
  required_providers {
    aws    = { source = "hashicorp/aws", version = "~> 5.0" }
    random = { source = "hashicorp/random", version = "~> 3.6" }
    time   = { source = "hashicorp/time", version = "~> 0.12" }
  }
}

variable "account_id" {
  type = string
}

provider "aws" {
  region              = "us-east-2"
  allowed_account_ids = [var.account_id]
}

resource "random_pet" "name" {
  length = 2
}

#resource "aws_s3_bucket" "keep_me" {
#  bucket = "tfa-keep-${random_pet.name.id}"
#}

resource "time_sleep" "slow" {
  create_duration = "60s"
}

removed {
  from = aws_s3_bucket.keep_me

  lifecycle {
    destroy = false
  }
}