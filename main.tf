provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket       = "aviz.statelocation"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
  }
}

resource "aws_instance" "mumbaiserver" {
  ami                    = "ami-035827357e3c7e810"
  instance_type          = "t3.small"
  key_name               = "awar11-na"

  tags = {
    Name = "Web-server-test"
  }
}
