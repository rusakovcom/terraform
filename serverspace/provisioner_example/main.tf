resource "serverspace_server" "server1" {
  count = 1

  name = "test"
  image = "Ubuntu-20.04-X64"
  location = "am2"
  cpu = 1
  ram = 1024

  boot_volume_size = 25 * 1024

  nic {
    network = ""
    network_type = "PublicShared"
    bandwidth = 50
  }

  ssh_keys = [
    var.ssh_key_id
  ]

  connection {
    host = self.public_ip_addresses[0]
    user = "root"
    type = "ssh"
    private_key = file(var.pvt_key)
    timeout = "2m"
  }

  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      "mkdir -p /root/testdir/",
      "exit 0"
    ]
  }

}
