variable "region" {
	default = "us-east-2"
}

variable "profile" {
	default = "default"
}

variable "instance_small" {
	default = "t2.small"
}

variable "ami_small" {
	default = "ami-09558250a3419e7d0"
}

variable "allocated_storage" {
	default = 20
}

variable "storage_type" {
	default = "gp2"
}

variable "engine" {
	default = "postgres"
}

variable "engine_version" {
	default = "12.4"
}

variable "instance_class" {
	default = "db.t2.micro"
}

variable "name" {
	default = "final_dev"
}

variable "username" {
	default = "postgres"
}

variable "password" {
	default = "postgresfinaltest"
}

variable "parameter_group_name" {
	default = "default.postgres12"
}

variable "skip_final_snapshot" {
	default = true
}