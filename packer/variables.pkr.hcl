variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_name" {
  type    = string
  default = "linux-web-app"
}

variable "base_ami" {
  type    = string
  default = "ami-0b72821e2f351e396"
}

variable "subnet_id" {
  type    = string
  default = "subnet-070eff731a3dcf3e1"
}

variable "security_group_id" {
  type    = string
  default = "sg-07378d540fa8b81a1"
}
