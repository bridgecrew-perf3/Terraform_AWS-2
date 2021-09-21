provider "aws" {
   region     = "eu-central-1"
   access_key = "AKIATspmbXB2EPCJFO4Y"
   secret_key = "AH9Hw//EfW6OJM8EFrWllkKdlgovpihIvYpu9TTxr"
   
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
