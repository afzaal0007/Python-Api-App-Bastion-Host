# Data source to fetch VPC and Subnet IDs
data "aws_vpc" "my_vpc" {
  filter {
    name   = "tag:Name"
    values = ["MyVPC"]
  }
}

data "aws_subnet" "public_subnet" {
  filter {
    name   = "tag:Name"
    values = ["PublicSubnet"]
  }
}


# Bastion Host and SG Module
module "bastion" {
  source              = "./modules/bastion"
  vpc_id              = data.aws_vpc.my_vpc.id
  public_subnet_id    = data.aws_subnet.public_subnet.id
  security_group_name = "MySecurityGroup"
  cidr_block          = "0.0.0.0/0" #"33.44.55.66/32" # Replace with your Public IP
  ami_id              = "ami-0f5ee92e2d63afc18"
  instance_type       = "t2.micro"
  key_name            = "EKS-Key-PAIR"
  instance_name       = "BastionHost"
}

