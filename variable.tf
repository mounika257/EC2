variable "aws_region" {
    default = "ap-south-1"
}

variable "access_key" {
    default = ""
}

variable "secret_key" {
    default = ""
}

variable "ami_ec2" {
    default = "ami-00bf4ae5a7909786c"
}

variable "ec2_instance" {
    default = "t2.micro"
}

variable "key_name" {
    default = "*/mykey.pem"
  
}
