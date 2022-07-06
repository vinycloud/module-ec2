module "ec2" {
  source             = "./modules/ec2"
  ami_id             = var.ec2_ami_id
  instance_type      = var.ec2_instance_type
  tags               = var.ec2_tags
  subnet_id          = var.ec2_subnet_id
  security_group_ids = var.ec2_security_group_ids
  key_pair_name      = var.ec2_key_pair_name
  instance_name      = var.ec2_instance_name
  vpcid              = var.ec2_vpcid
}
