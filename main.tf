
resource "aws_instance" "mumbaiserver" {
  ami           = "ami-035827357e3c7e810"
  instance_type = "t3.small"
  key_name      = "awar11-na"

  tags = {
    Name = "PLNXWEBICI01"
  }
}

resource "aws_s3_bucket" "public_bucket" {
  bucket = "aviz-hcp-test-120620261"
}
