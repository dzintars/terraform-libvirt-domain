data "template_file" "user_data" {
  template = file("${path.module}/templates/cloud_init.tpl")
  vars = {
    user            = local.vm.user
    hostname        = local.vm.hostname
    domain          = local.vm.domain
    time_zone       = local.vm.time_zone
    vault_addr      = var.vault.address
    vault_role_id   = var.vault.role_id
    vault_secret_id = var.vault.secret_id
  }
}

data "template_file" "network_config" {
  template = file("${path.module}/templates/network_config_dhcp.tpl")
}
