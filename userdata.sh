#!/bin/bash
sudo yum update
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>Guild Terraform 02022022</h1>" | sudo tee /var/www/html/index.html