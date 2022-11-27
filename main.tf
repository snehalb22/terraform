provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "AWS-instance" {
  count = 1
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  tags = {
    Name = "Node1"
  }

}