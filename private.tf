resource "aws_subnet" "private-subnet" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.private_subnet_cidr}"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Terraform Private Subnet"
  }
}
