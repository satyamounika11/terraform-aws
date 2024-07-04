resource "aws_instance" "example" {
  ami           = "ami-0abcdef1234567890" # specify a valid AMI ID
  instance_type = "t2.micro"              # specify the instance type

  tags = {
    Name = "ExampleInstance"
  }
}
