module "resource" {
    source = "../../Resource"
  RG = var.RG1
}
module "virtual_network" {
    source = "../../virtualnetwork"
    MYVnet = var.Vnet1
  depends_on = [ module.resource ]
}

module "Subnet" {
  source     = "../../subnet"
  Subnet = var.Subnet
  depends_on = [ module.virtual_network ]

}

module "Network" {
  source     = "../../Nic"
  NIC = var.NIC
  depends_on = [module.Subnet]

}

module "Public_ip" {
  source     ="../../Public_ip"
  Public = var.Public
  depends_on = [module.Network]

}

module "virtual_machine" {
  source = "../../virtualmachine"
  VM = var.VM
  depends_on = [module.Public_ip]
}

