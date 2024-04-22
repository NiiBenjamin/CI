provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0b9932f4918a00c4f"  # Ubuntu 20.04 LTS
  instance_type = "t2.micro"
  key_name      = "ansible-key"
  



  tags = {
    Name = "MyUbuntuInstance"
  }
}
