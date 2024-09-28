provider  "aws" {

        region = "us-west-1"
        }

terraform {
  backend "s3" {
    bucket         = "onemyterralockbucket"
    key            = "TERRAFORM-STATE/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}

resource "aws_vpc" "myvpc01" {
        cidr_block = "10.0.0.0/16"
        }
