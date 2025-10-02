terraform {
  required_providers {
    aws = {
      #The SOURCE argument specifies a hostname (optional), namespace, and provider name.
      #In the example configuration, the aws provider's source is hashicorp/aws, which
      #is a shortened form of registry.terraform.io/hashicorp/aws, the address of the
      #provider in the Terraform Registry.
      source = "hashicorp/aws"
      #The version argument sets a version constraint for your AWS provider. If you do
      #not specify a version constraint, Terraform defaults to the most recent version of
      #the provider. We recommend using version constraints to ensure that Terraform does
      #not install a version of the provider that you have not tested with your configuration.
      #You can find the latest stable version of the provider here: https://registry.terraform.io/providers/hashicorp/aws/latest
      version = "~> 5.92"
    }
  }
  #The example configuration also defines the required version of Terraform, you can
  #check your current Terraform version by running the "terraform -version" command.
  required_version = ">= 1.2"
}


