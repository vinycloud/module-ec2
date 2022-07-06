resource "aws_key_pair" "webkp"{
    key_name = var.key_name
    public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKDsBmR19NNk9jzuyY5eHSXOHtbaI4b3/H7gIu7wuNo1 guildiac"
    
}

resource "aws_instance" "web"{
    ami = var.ami
    instance_type = var.instancetype
    key_name = aws_key_pair.webkp.id
    vpc_security_group_ids = [aws_security_group.web_traffic.id]
    user_data = file("userdata.sh")
    
    tags = {
      "Name" = var.instancename
    }
}

resource "aws_security_group" "web_traffic"{
    name = "Permite acesso Web"
    vpc_id = var.vpcid
    
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_security_group_rule" "rule_traffic"{
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = -1
    cidr_blocks = ["177.181.29.232/32"]
    security_group_id = aws_security_group.web_traffic.id 

}

