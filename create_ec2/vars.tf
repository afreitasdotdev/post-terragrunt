
variable "AWS_REGION" {
  description = "Aws region"
  default = "us-east-1"  
}

variable "EC2_AMI" {
  description = "EC2 AMI - Ubuntu 18.04"
  default = "ami-0ac80df6eff0e70b5"  
}

variable "EC2_NAME" {
  description = "EC2 Name"
  default = "basic-instance"  
}

variable "EC2_TYPE" {
  description = "EC2 Type"
  default = "t3.medium"  
}

variable "EC2_AMOUNT" {
  description = "Amount of instances"
  default = "1"
}

variable "EC2_KEY_NAME" {
  description = "Key pair name"
  default = "SUA_CHAVE"
}

variable "EC2_SUBNET_ID" {
  description = "Subnet id"
  default = "INSIRA_ID_SUBNET"
}

variable "EC2_SECURITY_GROUP" {
  description = "Security group id"
  default = ["INSIRA_ID_SECURITY_GROUP"]
}

variable "EC2_SECURITY_GROUP_ID" {
  description = "Security group id"
  default = "INSIRA_ID_SECURITY_GROUP"
}

variable "EXPOSE_PORT" {
  description = "Port to ingress"
  default = "INSIRA_PORTA"
}

variable "EXPOSE_PORT_PROTO" {
  description = "Port protocol"
  default = "tcp"
}
