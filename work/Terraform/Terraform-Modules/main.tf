provider "aws" {
   region     = "us-east-1"
   access_key = ""
   secret_key = ""
}

module "my-webserver-1" {
  source = ".//module-1"
}

module "my-webserver-2" {
  source = ".//module-2"
}
