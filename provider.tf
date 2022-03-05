provider "aws" {
  region = var.region
  profile = "default"
}

terraform {

  backend "s3" {
    bucket = "vasista-devops-s3"
    key    = "mystate.tfstate"
    region = "eu-west-2"
    profile = "default"
    # dynamodb_table = "mydynamo-tf-state-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}