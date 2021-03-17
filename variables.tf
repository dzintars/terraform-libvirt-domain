variable "pool" {
  description = "Libvirt pool"
  type        = object({
    name      = string
  })
}

variable "volume" {
  description = "Libvirt domain volume"
  type        = object({
    name      = optional(string)
    pool      = string
    source    = optional(string)
    format    = optional(string)
  })
}

variable "cloudinit" {
  description = "Cloudinit image"
  type        = object({
    name      = optional(string)
  })
}

variable "vm" {
  type = object({
    user            = optional(string)
    hostname        = optional(string)
    domain          = optional(string)
    time_zone       = optional(string)
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
  })
}
