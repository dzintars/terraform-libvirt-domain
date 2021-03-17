resource "random_pet" "instance" {}

locals {
  volume = defaults(var.volume, {
    name    = random_pet.instance.id
    source  = "https://download.fedoraproject.org/pub/fedora/linux/releases/33/Cloud/x86_64/images/Fedora-Cloud-Base-33-1.2.x86_64.qcow2"
    format  = "qcow2"
  })

  network = defaults(var.network, {
    id   = ""
  })

  cloudinit = defaults(var.cloudinit, {
    name = random_pet.instance.id
  })

  vm = defaults(var.vm, {
    user            = "terraform"
    hostname        = random_pet.instance.id
    domain          = "example.local"
    time_zone       = "UTC"
  })

  domain = defaults(var.domain, {
    name = random_pet.instance.id
    memory = "1024"
    vcpu   = "1"
    arch   = "x86_64"
  })
}
