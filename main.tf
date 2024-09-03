provider "aws" {
  region = "us-west-2"  # Change this to your desired region
}




resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.redhat.id
  instance_type = "t2.micro"  
  subnet_id     = aws_subnet.my_subnet.id


  tags = {
    Name = "MyEC2Instance-new"
  }
}



resource "aws_instance" "my_instance-added" {
  ami           = data.aws_ami.redhat.id
  instance_type = "t2.micro"          
  subnet_id     = aws_subnet.my_subnet.id


  tags = {
    Name = "MyEC2Instance-new"
  }
}








