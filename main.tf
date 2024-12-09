terraform {
    required_version = "~> 1.10.0" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.80.0"
     }
    }
   }

provider "aws" {
        region = "ap-south-1" 
        #profile = "default"
	}

resource "aws_instance" "Devops" {
	ami = "ami-0c2b8ca1dad447f8a" 
	instance_type = "t2.micro"
}
