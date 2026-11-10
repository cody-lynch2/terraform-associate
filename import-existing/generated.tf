# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-02c4d180dcab0cafb"
resource "aws_security_group" "imported" {
  description = "Created outside Terraform"
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  name                   = "tfa-import-sg"
  vpc_id                 = "vpc-022b17f759d16d6ac"
}

# __generated__ by Terraform from "tfa-import-1794345178"
resource "aws_s3_bucket" "imported" {
  bucket              = "tfa-import-1794345178"
}
