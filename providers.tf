#terraform provider block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.32.0"
    }
  }
}
#pass the aws provider credentials so that terraform can connect to the aws service cloud provider
provider "aws" {
  region  = "us-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}