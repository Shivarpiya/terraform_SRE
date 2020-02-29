resource "aws_route_table" "public-subnet" {
  vpc_id = "${aws_vpc.default.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.default.id}"
  }
  tags = {
    Name = "Public subnet route"
  }
}

resource "aws_route_table_association" "public-subnet-association" {
  subnet_id = "${aws_subnet.public-subnet.id}"
  route_table_id = "${aws_route_table.public-subnet.id}"
}

resource "aws_route_table" "private-subnet" {
  vpc_id = "${aws_vpc.default.id}"
  route {
    cidr_block = "0.0.0.0/0"
    instance_id = "${aws_instance.nat.id}"
  }
  tags = {
    Name = "Private subnet route"
  }
}

resource "aws_route_table_association" "private-subnet-association" {
  subnet_id = "${aws_subnet.private-subnet.id}"
  route_table_id = "${aws_route_table.private-subnet.id}"
}
