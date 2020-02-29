provider "aws" {
  access_key = "<ACCESS_KEY_FROM_AWS>"
  secret_key = "SECRET_FROM_AWS"
  region = "us-east-1"
}
resource "aws_instance" "ankit" {
  ami = "ami-099a8245f5daa82bf"
  instance_type = "t2.micro"
  tags = {
    Name = "ankit"
  }
}
