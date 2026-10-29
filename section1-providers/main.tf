provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      Project = "tf-associate"
      Env     = "dev"
    }
  }
}

provider "aws" {
  alias  = "prod"
  region = "us-east-2"

  default_tags {
    tags = {
      Project = "tf-associate"
      Env     = "prod"
    }
  }
}

resource "random_pet" "suffix" {
  length = 2
}

resource "aws_s3_bucket" "dev" {
  bucket = "tfa-dev-${random_pet.suffix.id}"
}

resource "aws_s3_bucket" "prod" {
  provider = aws.prod
  bucket   = "tfa-prod-${random_pet.suffix.id}"
}

output "dev_bucket" {
  value = aws_s3_bucket.dev.bucket
}

output "prod_bucket" {
  value = aws_s3_bucket.prod.bucket
}