provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVE2XXGKKLKA54RU2"
  secret_key = "921ayARIoTGSO2qQ6h7bhFZ5ZkWc0bzS8ldzygN6"
}

resource "aws_instance" "my_ec2_example_instance" {
    ami = "ami-00abfd8da690f984d"  
    instance_type = "t2.micro" 
    tags = {
        Name = "Terraform New EC2 Instance"
    }
}
