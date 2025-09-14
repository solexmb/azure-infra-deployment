# module "linux_vm" {
#   source  = "app.terraform.io/<ORG>/linux-vm/azure"
#   version = "0.1.0"

#   project             = var.project
#   resource_group_name = local.resource_group_name
#   location            = azurerm_resource_group.rg.location
#   nic_id              = module.network.nic_id
#   vm_size             = "Standard_B1s"
#   admin_username      = "azureuser"
#   ssh_public_key      = var.ssh_public_key
# }

module "azure-linux-vm" {
  source  = "app.terraform.io/solexb/azure-linux-vm/azurerm"
  version = "0.0.1-alpha-10"
  
  vm_name = "${local.primary_prefix}-demo" 
#   project             = var.project
  resource_group_name = azurerm_resource_group.primary_automation_dev_rg.name
  location            = azurerm_resource_group.primary_automation_dev_rg.location
  nic_id              = module.azure-network.nic_id
  vm_size             = "Standard_B1s"
  admin_username      = "azureuser"
  ssh_public_key      = var.ssh_public_key

  enable_monitoring   = true
  law_name            = "base-automation"
  memory_threshold_80 = 80
  memory_threshold_90 = 90
  cpu_threshold_80    = 0.2
  cpu_threshold_90    = 90
  disk_space_threshold = 10
  os_disk_free_space_percentage_threshold = 10
  email_action_receivers = [
    {
      name          = "OpsTeam"
      email_address = "solomon.balogun.m@gmail.com"
    },
    {
      name          = "DevTeam"
      email_address = "dev@example.com"
    }
  ]
#   tags = {
#     Environment = "dev"
#     Project     = "demo"
#   }


}