resource "aws_instance" "ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.web_traffic.id]
  key_name               = var.key_pair_name
  tags                   = merge({ Name = var.instance_name }, var.tags)

}

resource "aws_security_group" "web_traffic" {
  name   = "Permite SSH"
  vpc_id = var.vpcid

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "rule_traffic" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["177.181.29.232/32"]
  security_group_id = aws_security_group.web_traffic.id

}
