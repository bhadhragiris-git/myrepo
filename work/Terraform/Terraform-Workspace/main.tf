 provider "aws" {
   region     = "eu-central-1"
   access_key = "xxxx"
   secret_key = "xxxx"
   
}

locals {
  instance_name = "${terraform.workspace}-instance" 
}

resource "aws_instance" "ec2_example" {

    ami = "ami-0767046d1677be5a0" 

    instance_type = var.instance_type

    tags = {
      Name = local.instance_name
    }
}

/* To create workspace
  -  we need to run "terraform workspace new test"
  -  it will create and switch to test workspace
  -  to list the workspace - terraform workspace list
  -  in which workspace - terraform workspace show
  -  to switch workspace - terraform workspace select test
*/

/* terraform plan -var-file="dev.tfvars" 
   terraform plan -var-file="production.tfvars"
*/