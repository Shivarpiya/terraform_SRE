variable "access_key" {
  description = "AWS access key"
  default = "<ACCESS_KEY_NAME>"
}

variable "secret_key" {
  description = "AWS secret key"
  default = "<KEY_SECRET>"
}

variable "region" {
  description = "AWS region for hosting the resources"
  default = "us-east-1"
}

variable "key_path" {
  description = "Key path on local to login to server"
  default = "/root/key.pem"
}

variable "key_name" {
  description = "key name for ssh to server"
  default = "<NAME by which key created in AWS>"
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  default = "10.0.2.0/24"
}

variable "amis" {
  description = "AMI for instances"
  default = {
    us-east-1 = "ami-0a887e401f7654935"
  }
}
