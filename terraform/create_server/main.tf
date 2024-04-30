# terraform init -var-file=secrets.tfvars
# terraform plan -var-file=secrets.tfvars
# terraform apply -var-file=secrets.tfvars
# terraform show
# terraform destroy

resource "serverspace_server" "server1" {
  name = "server1"
  image = "Ubuntu-20.04-X64" # examples: "Oracle-9.3-X64","Oracle-8.6-X64","CentOS-7.9-X64","Debian-12-X64","Ubuntu-22.04-X64","FreeBSD-14.0-X64","Windows-Server 2022-X64","Windows-Server 2019-X64"
  location = "ds1" # examples: "ds1","am2","nj3","kz","ca","tr","br"
  cpu = 1
  ram = 2048

  boot_volume_size = 25 * 1024

  nic {
    network = ""
    network_type = "PublicShared"
    bandwidth = 50
  }

  ssh_keys = [   # adding existing ssh key without adding new ssh resourse key, put it in secrets.tfvars
    var.ssh_key_id
  ]
}