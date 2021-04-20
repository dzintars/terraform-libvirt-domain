variable "volume" {
  description = "Libvirt domain volume"
  type        = object({
    name      = optional(string)
    pool      = optional(string)
    source    = optional(string)
    format    = optional(string)
  })
}

variable "cloudinit" {
  description = "Cloudinit image"
  type             = object({
    name           = optional(string)
    interface_name = optional(string)
    addresses      = optional(string)
    gateway        = optional(string)
    nameservers    = optional(object({
      ns1 = optional(string)
      ns2 = optional(string)
      ns3 = optional(string)
    }))
  })
}

variable "vm" {
  type = object({
    user             = optional(string)
    user_ssh_pub_key = optional(string)
    hostname         = optional(string)
    domain           = optional(string)
    time_zone        = optional(string)
  })
}

variable "vault" {
  type = object({
    address   = string
    role_id   = string
    secret_id = string
  })
}

variable "domain" {
  type = object({
    name   = optional(string)
    memory = optional(string)
    vcpu   = optional(string)
    arch   = optional(string)
  })
}

variable "network" {
  type = object({
    id   = optional(string)
    name = string
    mac  = optional(string)
  })
}
