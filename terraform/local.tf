
locals {
  
  prefix = "cloud-platform"
  env    = lower(var.environment)
  primary_prefix = "${local.prefix}-${local.env}-automation-e2"

  # Optional: derived names for network module
#   vnet_name   = "${var.project}-vnet"
#   subnet_name = "${var.project}-subnet"
#   nic_name    = "${var.project}-nic"
#   public_ip_name = "${var.project}-pip"
}