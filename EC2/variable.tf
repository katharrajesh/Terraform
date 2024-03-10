variable "ami_id" {
  type = string
}

variable "instance-type" {
  type = string
}

variable "availability_zones" {
  type = list(any)
}

variable "az-count" {
  type = number
}

variable "my-provider" {
  type = string
}

variable "instance-count" {
  type    = number
  default = 1
}

variable "allowed_ports" {
  type = list(number)
}

variable "ebs-size" {
  type = number
}