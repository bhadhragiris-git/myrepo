provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "my_ec2_example_instance" {
    ami = "ami-00abfd8da690f984d"  
    instance_type = var.instance_type 
    //count = var.instance_count
    count = 1
    associate_public_ip_address = var.enable_public_ip
    /*tags = {
        Name = "Terraform New EC2 Instance"
    }*/
    tags = var.project_environment
}


resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

