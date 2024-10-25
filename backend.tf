terraform {
  backend "s3" {
    bucket = "temp-tf-demo-181024"
    key    = "terraform/terraform.tfstate"
    region = "eu-west-1"
  }
}
