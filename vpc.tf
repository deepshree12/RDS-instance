resource "aws_vpc" "main" {

cidr_block = "10.0.0.0/16"

tags = {

name = "my-vpc"

}

}

resource "aws_subnet" "private_subnet_1" {

vpc_id = aws_vpc.main.id
cidr_block = "10.0.1.0/24"
availability_zone = "ap-southeast-2b"
map_public_ip_on_launch = false

tags = {

name = "private-subnet-1"

}

}

resource "aws_subnet" "private_subnet_2" {

vpc_id = aws_vpc.main.id
cidr_block = "10.0.2.0/24"
availability_zone = "ap-southeast-2c"
map_public_ip_on_launch = false

tags = {

name = "private-subnet-2"
}


}

resource "aws_db_subnet_group" "rds_subnet_group" {
name = "aurora-subnet-group"
subnet_ids = [

aws_subnet.private_subnet_1.id,
aws_subnet.private_subnet_2.id

]

tags = {

name = "aurora-subnet"

}

}

