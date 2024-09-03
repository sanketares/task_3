provider "aws" {
  region = "us-west-2"  # Change this to your desired region
}



resource "aws_instance" "my_instance-test" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"              


  tags = {
    Name = "MyEC2Instance-new"
  }
}


resource "aws_instance" "my_instance-added" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"          
  subnet_id     = aws_subnet.my_subnet.id


  tags = {
    Name = "MyEC2Instance-new"
  }
}







