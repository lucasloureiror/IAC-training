resource "aws_instance" "instance-one" {
    ami = "ami-0aa7d40eeae50c9a9"
    instance_type = "t2.micro"
}

resource "aws_instance" "instance-two" {
    ami = "ami-0aa7d40eeae50c9a9"
    instance_type = "t2.micro"
}