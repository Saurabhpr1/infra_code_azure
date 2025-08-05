RG1 = {
    RG ={
       name = "rg-qa-grouppipe12" 
       location = "west us"
    }
}
Vnet1 = {
    Vnet ={
       vnet_name ="rg_vnet_pipe12" 
       location ="west us"
       resource_group_name = "rg-qa-grouppipe12"
       address_space = ["10.0.0.0/16"]
    }
}
Subnet = {
    sub ={
        sub_name = "rg_sub_pipe12"
        virtual_network_name = "rg_vnet_pipe12"
        resource_group_name = "rg-qa-grouppipe12"
        address_prefixes = ["10.0.2.0/24"]
    }

}
NIC = {
    NIC ={
        nic_name ="rg_nic_pipe12"
        location ="west us"
        resource_group_name = "rg-qa-grouppipe12"
        ipname = "internal"
        Datasubname ="rg_sub_pipe12"
        virtual_network_name = "rg_vnet_pipe12"
        private_ip_address_allocation ="Dynamic"


    }
}
Public = {
    pub ={
        pubip_name = "rg_public_12"
        location = "west us"
        resource_group_name = "rg-qa-grouppipe12"
        allocation_method = "Static"
        sku = "Standard"


    }

}
VM = {
    VM ={
        vm_name = "rg_linuxmachine_pipe"
        location = "west us"
        resource_group_name = "rg-qa-grouppipe12"
        size ="Standard_F2"
        admin_username ="admin_username" 
        admin_password ="userpipe12@13"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
        publisher = "Canonical"
        offer     = "0001-com-ubuntu-server-jammy"
        sku       = "22_04-lts"
        version   = "latest"
        data_name = "rg_nic_pipe12"
        
    }
}