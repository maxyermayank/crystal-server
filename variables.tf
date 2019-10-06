############################### AWS VARIABLES ################################
variable "access_key" {
  description = "AWS Access Key"
}

variable "secret_key" {
  description = "AWS Secret Key"
}

variable "region" {
  description = "AWS Region"
}
############################### PROJECT VARIABLES ################################

variable "project" {
  type        = string
  description = "Project Name"
}

variable "product" {
  type        = string
  description = "Product Domain"
}

variable "environment" {
  description = "Environment Name where Crystal Report Instance is being deployed"
}

variable "description" {
  description = "Windows Crystal Report Server"
}

variable "managedBy" {
  description = "Managed By automation tool name"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

############################### AWS INSTANCE VARIABLES ################################

variable "admin_username" {
  description = "Windows Administrator username to login as."
}

variable "admin_password" {
  description = "Windows Administrator password to login as."
}

variable "aws_ami" {
  description = "Source AWS AMI to build new instance"
}

variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
}

variable "aws_instance_type" {
  description = "AWS Instance Type"
  default = "t2.micro"
}

variable "instance_count" {
  description = "Instance Count"
  default = 1
}

variable "vpc_id" {
  description = "AWS VPC ID"
}

variable "aws_subnet_id" {
  description = "AWS Subnet ID"
}

variable "aws_security_group" {
  description = "AWS Security Group"
}

variable "root_volume_type" {
  description = "Root Volume Type"
  default = "gp2"
}

variable "root_volume_size" {
  description = "Root Volume Size"
  default = "30"
}

variable "root_volume_encrypted" {
  description = "Root Volume Encrypted"
  default = false
}

variable "root_delete_on_termination" {
  description = "Root Volume delete on termination"
  default = true
}

variable "volume_type" {
  description = "Volume Type"
  default = "gp2"
}

variable "volume_size" {
  description = "Volume Size"
  default = "30"
}

variable "volume_encrypted" {
  description = "Volume Encrypted"
  default = false
}

variable "delete_on_termination" {
  description = "Volume delete on termination"
  default = true
}
