provider "aws" {
  region = "us-east-2"
  default_tags {
    tags = { Account = "dev" }
  }
}

provider "aws" {
  alias  = "prod"
  region = "us-east-2"
  default_tags {
    tags = { Account = "prod" }
  }
}

variable "owner" { 
  default = "cody" 
}

module "dev_bucket" {
  source      = "./modules/tagged-bucket"
  name_prefix = "tfa-mod"
  env         = "dev"
  owner       = var.owner
}

module "prod_bucket" {
  source      = "./modules/tagged-bucket"
  name_prefix = "tfa-mod"
  env         = "prod"
  owner       = var.owner

  providers = {
    aws    = aws.prod
    random = random
  }
}

module "registry_bucket" {
  source        = "terraform-aws-modules/s3-bucket/aws"
  version       = "~> 4.0"
  bucket_prefix = "tfa-registry-"
}

module "git_bucket" {
  source        = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git?ref=v4.0.0"
  bucket_prefix = "tfa-git-"
}