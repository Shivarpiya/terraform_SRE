resource "aws_instance" "web" {
  ami = "${lookup(var.amis, var.region)}"
  availability_zone = "us-east-1a"
  instance_type = "t2.micro"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.web.id}"] 
  subnet_id = "${aws_subnet.public-subnet.id}"
  associate_public_ip_address = true
  tags = {
    Name = "ankit-web"
  }
}
