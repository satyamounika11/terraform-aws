resource "aws_instance" "example" {
  ami           = "ami-04a81a99f5ec58529" # specify a valid AMI ID
  instance_type = "t2.micro"              # specify the instance type

  tags = {
    Name = "ExampleInstance"
  }
}
