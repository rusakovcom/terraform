# terraform init -var-file=secrets.tfvars
# terraform plan -var-file=secrets.tfvars
# terraform apply -var-file=secrets.tfvars
# terraform destroy -var-file=secrets.tfvars

resource "serverspace_server" "server1" {
  image = "Ubuntu-20.04-X64"
  name = "Ubuntu"
  location = "am2"
  cpu = 1
  ram = 2048

  boot_volume_size = 25*1024

  nic {
    network = ""
    network_type = "PublicShared"
    bandwidth = 50
  }
 }
