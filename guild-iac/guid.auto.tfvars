ec2_ami_id        = "ami-01163e76c844a2129"
ec2_instance_type = "t3.micro"
ec2_tags = {
  Environment = "dev"
  ManagedBy   = "terraform"
  Owner       = "Vinicius Fialho"
}
ec2_subnet_id          = "subnet-0cb71338cdecb12b6"
ec2_security_group_ids = ["sg-04588936f5cbfdfe2"]
ec2_key_pair_name      = "guild-iac-module"
ec2_instance_name      = "guild-iac-modulo"
ec2_vpcid              = "vpc-00c32d1aa37f1a616"