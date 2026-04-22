terraform {

backend "s3" {

bucket = "rds-s3-bucker-665977c8"
key = "test/terraform.tfstate"
region = "ap-southeast-2"


}
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }


}


provider "aws" {

region = "ap-southeast-2"

}
