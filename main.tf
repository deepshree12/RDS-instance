module "database" {

source = "./module/rds"

identifier = var.identifier
engine = var.engine
engine_version = var.engine_version
instance_class = var.instance_class
storage_type = var.storage_type
allocated_storage = var.allocated_storage
db_name = var.db_name
username = var.username
skip_final_snapshot = var.skip_final_snapshot
db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.name
db_parameter_group_name = aws_db_parameter_group.rds_parameter_group.name


}
