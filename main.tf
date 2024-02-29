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

# provider us-east-1 region
provider "aws" {
    region = "us-east-1"
}