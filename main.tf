provider "aws" {
  region = "ap-south-1"
}

terraform {
  cloud {
    organization = "aviz-organization"
    workspaces {
      name = "mycode"
    }
  }
}

resource "aws_instance" "mumbaiserver" {
  ami                    = "ami-035827357e3c7e810"
  instance_type          = "t3.micro"
  key_name               = "awar11-na"

  tags = {
    Name = "Web-server-localtest"
  }
}