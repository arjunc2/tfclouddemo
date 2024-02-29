terraform {
  required_providers {
    aws = {
	  source = "hashicorp/aws"
	  }
	  random = {
	    source = "hashicopr/random"
	  }
	}
	backend "remote" {
    organization = "AWSTerraform433"

    workspaces {
      name = "AWS-Tf433"
    }
  }
}

# random provider
provider "random" {}

# provider us-east-1
provider "aws" {
    region = "us-east-1"
}