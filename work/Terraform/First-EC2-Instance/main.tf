provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAUAYR5PZWSYPNQVEC"
  secret_key = "wewnValfKaIu9xxCQXRnKLAWHPTMIdy1/zcehlTc"
}

resource "aws_instance" "my_ec2_example_instance" {
    ami = "ami-070493ccb1413949b"  
    instance_type = "t2.micro" 
    tags = {
        Name = "Terraform New EC2 Instance"
    }
}
