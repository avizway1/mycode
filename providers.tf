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
