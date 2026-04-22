resource "aws_db_parameter_group" "rds_parameter_group" {
name = "rds-parameter-group"
family = "postgres15"
parameter {

 name = "log_min_duration_statement"
 value = "1000"
 apply_method = "immediate"

}

parameter {

 name = "max_connections"
 value = "100"
 apply_method = "pending-reboot"

}
tags = {

name = "rds-parameter-group"

}
}
