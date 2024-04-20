terraform {
  required_providers {
    serverspace = {
      source = "itglobalcom/serverspace"
      version = "0.3.0"
    }
  }
}

variable "s2_token" {
  type = string
  default = "<api-ключ>"
}

provider "serverspace" {
  key = var.s2_token
}
