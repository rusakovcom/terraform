terraform {
  required_providers {
    serverspace = {
      source = "itglobalcom/serverspace"
      version = "0.3.1"
    }
  }
}

provider "serverspace" {
  key = var.s2_token
}
