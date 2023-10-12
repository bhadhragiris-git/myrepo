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

variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
   default     = "t2.micro"
} 

/*variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 2
}*/

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
}

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["user1", "user2", "user3s"]
}

variable "project_environment" {
  description = "project name and environment"
  type        = map(string)
  default     = {
    project     = "project-alpha",
    environment = "dev"
  }
}