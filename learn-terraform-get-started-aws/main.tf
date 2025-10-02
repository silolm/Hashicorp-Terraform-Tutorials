# main.tf corresponds to the file that has the calls to all the modules and resources
# you use in your project. In OOP the place where you instantie your classes.


#***********#
# Providers #
#***********#
# The provider block configures options that apply to all resources managed by your provider.

provider "aws" {
  # The label of the provider block corresponds to the NAME of the provider in the REQUIRED_PROVIDERS
  # list in your TERRAFORM.tf block.

  region = "us-west-2"
  # Note
  # If you would rather provision your resources in a different AWS region, update the value of
  # the region argument to your preferred region.
}

# You can use multiple providers or multiple instances of the same provider (like different regions). 
# Each provider must authenticate with the cloud API to manage resources.


data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "learn-terraform"
  }
}
