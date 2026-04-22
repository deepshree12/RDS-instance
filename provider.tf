terraform {

backend "s3" {

bucket = "rds-s3-bucker-665977c8"
key = "test/terraform.tfstate"
region = "ap-southeast-2"


}



}


provider "aws" {

region = "ap-southeast-2"

}
