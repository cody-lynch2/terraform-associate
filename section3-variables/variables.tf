variable "env" {
  type    = string
  default = "default-value"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "azs" {
  type    = list(string)
  default = ["us-east-2a", "us-east-2b", "us-east-2a"]
}

variable "az_set" {
  type    = set(string)
  default = ["us-east-2a", "us-east-2b", "us-east-2a"]
}

variable "tags" {
  type = map(string)
  default = {
    Project = "tf-associate"
    Owner   = "cody"
  }
}

variable "server" {
  type = object({
    name = string
    size = string
    port = number
  })
  default = {
    name = "web"
    size = "t3.micro"
    port = 80
  }
}

variable "db_password" {
  type      = string
  sensitive = true
  default   = "not-a-real-password"
}

variable "owner" {
  type = string
}