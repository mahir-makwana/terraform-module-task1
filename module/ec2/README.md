# terraform-aws-ec2

## Overview

This Terraform module creates an AWS EC2 instance and run nginx server

## Features

- Creates a EC2 instance to specified Instant type and ami id
- Add a key name

## Usage

```
module "ec2_nginx" {
  source = "./module/ec2"

  ami = "ami-08718895af4dfa033"

  instance_type = "t2.small"

  key_name = "mahir-key"

  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC/Eup1ya9unELUWMOaLJjjUKknb+U4aM7K1eHA1oEVMJJsK+vwDv6kd+xV+lN/KNMPecjv6521JuGUlMHW0Twfy/vEi6auXfhaEOIT5BwmnPGwLHmJ8d3XS72WrcGzwgYBfwaNBNjhoYBcL3v0v9z7/UMZqs4QP5KuSrn5KIIZOf2a5MUKjaD94ESin41pvqPdlM/y5zxtKINFvpD2nE96aVaz555lxRDCRFBZpCNhQ16siAqn/zaUCQkUlXjol3GrGLCIOPE6EeAgOZJkHNghpKMHQ4sVqSZFnxRXdq+Ci1TOEyg5B3N3PY8Umxfbfgew5uBcK6gosLAT4iBzg+Bh mahir makwana@LAPTOP-1SUAAGMF"

}

```
