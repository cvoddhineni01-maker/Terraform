resource "aws_instance" "terraform_example" {
  ami           = "ami-0220d79f3f480ecf5"
  vpc_security_group_ids = [
    aws_security_group.allow_all.id
  ]
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "allow_all" {
  name   = "allow_all"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}