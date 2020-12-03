provider "aws" {
	region = var.region
	profile = var.profile
}

resource "aws_instance" "linuxfinal" {
	ami = var.ami_small
	instance_type = var.instance_small
}

resource "aws_db_instance" "postgresql" {
	allocated_storage = var.allocated_storage
	storage_type = var.storage_type
	engine = var.engine
	engine_version = var.engine_version
	instance_class = var.instance_class
	name = var.name
	username = var.username
	password = var.password
	parameter_group_name = var.parameter_group_name
	skip_final_snapshot = var.skip_final_snapshot
}