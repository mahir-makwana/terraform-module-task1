This is complete config to work with this module

USAGE

```
module "ec2_nginx" {
  source = "./module/ec2"

  ami = "ami-08718895af4dfa033"

  instance_type = "t2.small"

  key_name = "mahir-key"


}

```
