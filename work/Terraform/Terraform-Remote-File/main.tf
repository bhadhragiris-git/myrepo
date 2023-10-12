terraform {
 backend "s3" {
   bucket = "my-bucket-bhadhragiri"
   key = "key/terraform.tfstate"
   region = "us-east=1"
 }
}

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

// terraform state pull // if developers took rest a period of 1 week, and if he wants to pull  the code back, this is used
// terraform state push // not used

// local storage
data "terraform_remote_state" "local_state" {
  backend = "local"
}

//remote storage

data "terraform_remote_state" "remote_state" {
  backend = "remote"
}