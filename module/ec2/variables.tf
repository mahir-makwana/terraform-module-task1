variable "ami" {
  description = "your ami id"
  type        = string
}

variable "instance_type" {
  description = "your instance type"
  type        = string

  validation {
    condition     = var.instance_type == "t2.micro" || var.instance_type == "t2.small" || var.instance_type == "t2.large"
    error_message = "Invalid instance type only t2.micro or t2.small or t2.large allowed"
  }
  default = "t2.micro"
}

variable "key_name" {
  description = "key name for accessing"
  type        = string
}

variable "public_key" {
  description = "your public key for ssh access"
  type        = string
}

