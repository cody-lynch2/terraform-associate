resource "random_pet" "suffix" {
  length = 2
}

resource "aws_s3_bucket" "this" {
  bucket = "${var.name_prefix}-${var.env}-${random_pet.suffix.id}"

  tags = {
    Env = var.env
    Managed = "terraform"
    Owner = var.owner
  }
}