resource "aws_db_instance" "rds_instance" {

identifier = var.identifier
engine = var.engine
engine_version = var.engine_version
instance_class = var.instance_class
storage_type = var.storage_type
allocated_storage = var.allocated_storage
db_subnet_group_name = var.db_subnet_group_name
db_name = var.db_name
username = var.username
manage_master_user_password = true 
parameter_group_name = var.db_parameter_group_name
skip_final_snapshot = var.skip_final_snapshot
backup_retention_period = var.backup_retention_period
}
