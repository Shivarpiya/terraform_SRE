resource "aws_eip" "nat" {
  instance = "${aws_instance.nat.id}"
  vpc = true
}

resource "aws_eip" "web" {
  instance = "${aws_instance.web.id}"
  vpc = true
}
