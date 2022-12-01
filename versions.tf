terraform {
/*
   cloud {
     organization = "infy-org"

     workspaces {
       name = "Terraform-AWS-Infy"
     }
   }
*/
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }

  required_version = ">= 0.13"
}
