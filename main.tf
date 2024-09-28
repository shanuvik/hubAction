provider  "aws" {

        region = "us-west-1"
        }

resource "aws_vpc" "myvpc01" {
        cidr_block = "10.0.0.0/16"
        }
