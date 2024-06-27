terraform {
  required_providers {
    serverspace = {
      source = "itglobalcom/serverspace"
      version = "0.3.0"
    }
  }
}

### api key

variable "s2_token" {
  type = string
  default = "<you api key>" # put it in secrets.tfvars
}

provider "serverspace" {
  key = var.s2_token
}

### ssh key for adding to Linux server

variable "ssh_key_id" {
  default = "<your_ssh_key_id>" # put it in secrets.tfvars
}