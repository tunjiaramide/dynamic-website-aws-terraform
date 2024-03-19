#vpc variables
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "VPC cidr block"
  type        = string
}


variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "Public Subnet AZ1 cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "Public Subnet AZ2 cidr block"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  default     = "10.0.2.0/24"
  description = "Private App Subnet AZ1 cidr block"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  default     = "10.0.3.0/24"
  description = "Private App Subnet AZ2 cidr block"
  type        = string
}

variable "private_data_subnet_az1_cidr" {
  default     = "10.0.4.0/24"
  description = "Private Data Subnet AZ1 cidr block"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  default     = "10.0.5.0/24"
  description = "Private Data Subnet AZ2 cidr block"
  type        = string
}


#security group variables
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "the ip address that can ssh into ec2 instances"
  type        = string
}


#rds variables
variable "database_snapshot_identifier" {
  default     = "arn:aws:rds:us-east-1:snapshot"
  description = "database snapshot arn"
  type        = string
}

variable "database_instance_class" {
  default     = "db-t2-micro"
  description = "database instance type"
  type        = string
}

variable "database_name" {
  default     = "dev-rds-db"
  description = "database name"
  type        = string
}

variable "multi_az_deployment" {
  default     = "false"
  description = "create a standby db instance"
  type        = bool
}

variable "storage_size" {
  default     = 10
  description = "select size"
  type        = number
}


#alb variables
variable "ssl_certificate_arn" {
  default     = "arn:aws:acm:us-east-1:121090182602:certificate/0ff7aeee-e648-4bb1-95b7-116168be24d9"
  description = "ssl certificate arn"
  type        = string
}


#sns variables
variable "operator_email" {
  default     = "adetunjiaramide@gmail.com"
  description = "A valid email address"
  type        = string
}

