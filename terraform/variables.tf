variable "project" {
  description = "Prefix for naming"
  type        = string
}

# variable "resource_group_name" {
#   description = "Resource group name"
#   type        = string
# }

# variable "location" {
#   description = "Azure region"
#   type        = string
# }

variable "vnet_cidr" {
  description = "CIDR block for VNet"
  type        = string
  default     = "10.10.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for Subnet"
  type        = string
  default     = "10.10.1.0/24"
}

variable "ssh_public_key" {
  type = string
}

variable "environment" {
  type = string
}

variable "location" {
  type = string
}

variable "enable_monitoring" {
  description = "When true, deploy monitoring alerts and diagnostics."
  type        = bool
  default     = false
}

# variable "admin-group" {
#   description = "When true, deploy monitoring alerts and diagnostics."
#   type        = string
#   default     = ""
# }