terraform {
    required_version     =  "~> 0.13.0"
}

# DEFINE PROVIDER

provider "aws" {
  version = "~> 3.0"
  region  = var.AWS_REGION
}

# CREATE INSTANCE

resource "aws_instance" "basic-instance" {
  ami                              = var.EC2_AMI
  instance_type                    = var.EC2_TYPE
  count                            = var.EC2_AMOUNT
  associate_public_ip_address      = true
  key_name                         = var.EC2_KEY_NAME
  subnet_id                        = var.EC2_SUBNET_ID
  security_groups                  = var.EC2_SECURITY_GROUP
  
  tags          = {
    Name        = var.EC2_NAME
  }

}

# EXPOSE PORTS IF NECESSARY

resource "aws_security_group_rule" "ingress-port" {
  type              = "ingress"
  from_port         = var.EXPOSE_PORT
  to_port           = var.EXPOSE_PORT
  protocol          = var.EXPOSE_PORT_PROTO
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = var.EC2_SECURITY_GROUP_ID
}
