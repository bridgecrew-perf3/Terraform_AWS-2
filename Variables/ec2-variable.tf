provider "aws" {
   region     = "eu-central-1"
   access_key = "AKIATQ37NXB2OBQHAALW"
   secret_key = "ilKygurap8zSErv7jySTDi2796WGqMkEtN6txNHf"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-0767046d1677be5a0"
   instance_type =  var.instance_type

   tags = {
           Name = "Terraform EC2"
   }
}

variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
   default     = "t2.micro"
}
