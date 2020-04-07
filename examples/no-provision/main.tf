# Create a local state backend
terraform {
  backend "local" {
    path = ".terraform/terraform.tfstate"
  }
}

provider "aws" {
  region = "eu-west-1"
}


module "ssh_keypair_aws" {
  # source = "github.com/hashicorp-modules/ssh-keypair-aws"
  source = "../../"

  create = false
}
