resource "aws_vpc" "twitter-streaming-tf-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "twitter-streaming-tf-vpc"
  }
}

resource "aws_subnet" "publicsubnet" {
  vpc_id     = aws_vpc.twitter-streaming-tf-vpc.id
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "publicsubnet"
  }
}

resource "aws_internet_gateway" "ts-vpc-igw" {
  vpc_id = aws_vpc.twitter-streaming-tf-vpc.id
  tags = {
    Name = "ts-igw"
  }
}

resource "aws_route_table" "ts-vpc-route-table" {
  vpc_id = aws_vpc.twitter-streaming-tf-vpc.id

  route = [
    {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.ts-vpc-igw.id
      carrier_gateway_id = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id = ""
      instance_id = ""
      ipv6_cidr_block = ""
      local_gateway_id = ""
      nat_gateway_id = ""
      network_interface_id = ""
      transit_gateway_id = ""
      vpc_endpoint_id = ""
      vpc_peering_connection_id = ""
    }
  ]

  tags = {
    Name = "ts-vpc-route-table"
  }
}

resource "aws_main_route_table_association" "ts-vpc-route-table-assoc" {
  vpc_id = aws_vpc.twitter-streaming-tf-vpc.id

  route_table_id = aws_route_table.ts-vpc-route-table.id
}
