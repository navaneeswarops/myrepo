provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "../../modules/ec2"

  ami           = "ami-00e801948462f718a"
  instance_type = "t3.micro"
  name          = "dev-server"
  env           = "test"
}
