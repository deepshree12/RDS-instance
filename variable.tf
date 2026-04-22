variable "identifier" {

type = string
description = "identifier name"

}

variable "engine" {

type = string
description = "engine of database"

}

variable "engine_version" {

type = number
description = "engine version"

}

variable "instance_class" {

type = string
description = "instance_class"

}

variable "storage_type" {

type = string
description = "type of the storage"

}

variable "allocated_storage" {

type = number
description = "allocated storage"

}

variable "db_name" {

type = string
description = "database name"

}

variable "username" {

type = string
description = "username for the database"

}


variable "skip_final_snapshot" {

type = bool
description = "skip final snapshot"

}

variable "backup_retention_period" {

type = number
description = "add backup retention period"

}
