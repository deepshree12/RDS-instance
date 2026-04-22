resource "random_id" "random" {

byte_length = 4


}

resource "aws_s3_bucket" "rds_s3_bucket" {

bucket = "rds-s3-bucker-${random_id.random.hex}"

}
