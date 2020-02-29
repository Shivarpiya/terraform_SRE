resource "aws_instance" "db-1" {
  ami = "${lookup(var.amis, var.region)}"
  availability_zone = "us-east-1a"
  instance_type = "t2.micro"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.db.id}"]
  subnet_id = "${aws_subnet.private-subnet.id}"
  tags = {
    Name = "ankit-db"
  }
}
