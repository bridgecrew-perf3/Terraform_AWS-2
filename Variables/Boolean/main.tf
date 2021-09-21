provider "aws" {
   region     = "eu-central-1"
   access_key = "AKIATQ37NXB2AYK7R6PQ"
   secret_key = "S1Yg1Qm2JNSej8EHdhPTiu5l5ZD36URs3ed2NyYT"
}


resource "aws_instance" "ec2_example" {

   ami           = "ami-0767046d1677be5a0"
   instance_type =  "t2.micro"
   count = 1
  associate_public_ip_address = var.enable_public_ip

   tags = {
           Name = "Terraform EC2"
   }

}

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
}
