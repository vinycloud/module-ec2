variable "ami_id" {
  type        = string
  description = "ID da AMI da EC2"
}

variable "instance_type" {
  type        = string
  description = "Tipo de instânica EC2"
}

variable "tags" {
  type        = map(string)
  description = "Tags para a instância EC2"
  default     = {}
}

variable "subnet_id" {
  type        = string
  description = "ID da subnet"
}

variable "security_group_ids" {
  type        = list(string)
  description = "ID dos security groups da EC2"
}

variable "key_pair_name" {
  type        = string
  description = "Nome da key pair"
}

variable "instance_name" {
  type        = string
  description = "Nome da EC2"
}

variable "vpcid" {
  type = string
}