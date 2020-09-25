terraform {
  source = "git::ssh://git@github.com/afreitasdotdev/post-terragrunt.git//create_ec2"
}

inputs = {
  EC2_NAME              = "terragrunt_test"
  EC2_TYPE              = "t3.medium"
  AWS_REGION            = "us-east-1"
  EC2_AMOUNT            = "1"
  EC2_AMI               = "ami-0ac80df6eff0e70b5"
  EXPOSE_PORT           = "8081"
  EXPOSE_PORT_PROTO     = "tcp"
}


remote_state {
  backend = "s3"
  config = {
    bucket         = "SEU_BUCKET_S3"
    key            = "APPLICATION_NAME/terraform.tfstate"
    region         = "us-east-1"
    encrypt        =  true
  }
}
