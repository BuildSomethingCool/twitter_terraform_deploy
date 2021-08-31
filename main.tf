variable "aws_region" {
  type = string
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "twitter-deploy-state-bucket"
    key    = "state/terraform_state.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "vpc" {
  source = "./vpc"
}

module "s3" {
  source = "./s3"
}

module "sqs" {
  source = "./sqs"
}