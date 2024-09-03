provider "aws" {
  region = "us-west-2"  # Change this to your desired region
}




resource "aws_instance" "my_instance_newone" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"  
}










