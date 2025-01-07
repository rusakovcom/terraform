variable "s2_token" {
  type = string
  default = ""
  description = "API key, assigned in terraform.tfvars, take from https://my.serverspace.ru/automation"
}

variable "ssh_key_id" {
  type = string
  description = "SSH key ID to access resources"
}

variable "pvt_key" {
  description = "Path to the private SSH key"
  default     = "/path/to/rusakov/private_key"
}

# terraform.tfvars example:
# s2_token = "123456789"
# ssh_key_id = "12345"
# pvt_key = "/path/to/rusakov/private_key"
