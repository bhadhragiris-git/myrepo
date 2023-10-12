provider "aws" {
    region     = "us-east-1"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "my_ec2_example_instance" {
    ami = "ami-00abfd8da690f984d"  
    instance_type = "t2.micro" 
    tags = {
        Name = "Terraform New EC2 Instance"
    }
}

output "console output" {
   value = "First EC2 Instance" /* static output */
   value = aws_instance.my_ec2_example_instance.public_ip /* Dynamic Output */
}