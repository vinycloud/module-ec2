variable "ec2_ami_id" {
  type        = string
  description = "ID da AMI da EC2"
}

variable "ec2_instance_type" {
  type        = string
  description = "Tipo de instânica EC2"
}

variable "ec2_tags" {
  type        = map(string)
  description = "Tags para a instância EC2"
  default     = {}
}

variable "ec2_subnet_id" {
  type        = string
  description = "ID da subnet"
}

variable "ec2_security_group_ids" {
  type        = list(string)
  description = "ID dos security groups da EC2"
}

variable "ec2_key_pair_name" {
  type        = string
  description = "Nome da key pair"
}

variable "ec2_instance_name" {
  type        = string
  description = "Nome da EC2"
}

variable "ec2_vpcid" {
  type = string
}