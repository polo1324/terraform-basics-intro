resource "aws_s3_bucket" "tf_demo_bucket" {
  bucket = "181024-bsdfb-tf-demo"
  tags = {
    "mnpg:team" = "ops"
  }
}

variable "project_name" {
  type = string
  default = "mp-tf-demo"
  
}