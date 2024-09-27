provider  "aws" {

        region = "us-west-1"
        }

resource "aws_vpc" "myvpc01" {
        cidr_block = "10.0.0.0/16"
        }

resource "aws_subnet" "sub-1" {
        vpc_id = aws_vpc.myvpc01.id
        cidr_block = "10.0.1.0/24"
        }

resource "aws_subnet" "sub-2" {
        vpc_id = aws_vpc.myvpc01.id
        cidr_block = "10.0.2.0/24"
        }
