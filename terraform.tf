terraform {
  backend "s3" {
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.32.0"
    }
  }
  required_version = ">= 0.15.0, < 1.0.2"
}
