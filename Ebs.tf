provider "aws" {
  region = "us-west-2"
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-west-2a"
  size              = 40
  type              = "gp2"
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "MyInstance"
  }

  ebs_block_device {
    device_name = "/dev/sdf"
    volume_id   = aws_ebs_volume.example.id
  }
}
# myebsvolume