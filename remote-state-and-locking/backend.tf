   terraform {
     backend "s3" {
       key          = "remote-state-and-locking/terraform.tfstate"
       region       = "us-east-2"
       use_lockfile = true
     }
   }