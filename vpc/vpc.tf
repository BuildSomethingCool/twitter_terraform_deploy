resource "aws_vpc" "twitter-streaming-tf-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name               = "twitter-streaming-tf-vpc"
  }
}

resource "aws_subnet" "publicsubnet" {
  vpc_id     = aws_vpc.twitter-streaming-tf-vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "publicsubnet"
  }
}