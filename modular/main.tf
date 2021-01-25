############################
#### sample modular VM #####
#### vsphere creation  #####
############################

###########################
#####  Select Provider ####
###########################

#### Vsphere Provider example ######

#module "vsphere_module" {
#    source =  "/modules/providers/provider.tf"
#
#    
#    # uncomment this section if you would like to override the default values that are provided in each module
#    # Or if you would like to use values from a variables.tf (vars.tf) file to override the defaults
#
#    #admin_user = "${module.provider.admin_user}"
#    #password = "${var.admin_password}"
#    #vsphere_server = "${var.vcenter_server}"
#    #allow_unverified_ssl = true
#}

provider "vsphere" {
  user = "${var.admin_user}"
  password = "${var.admin_password}"
  vsphere_server = "${var.vsphere_server}"

# If you have a self-signed cert
  allow_unverified_ssl = true
}

module "datagather_module" {
    #provider = vsphere
    source = "./modules/datagather"
    
}

module "makevm_module" {
    #provider = vsphere
    source = "./modules/vm"
    vsphere_datacenter = "${module.datagather_module.vsphere_datacenter.id}"
    vsphere_datastore = "${module.datagather_module.vsphere_datastore.id}"
    vsphere_compute_cluster = "${module.datagather_module.vsphere_compute_cluster.id}"
    vsphere_network = "${module.datagather_module.vsphere_network.id}"
    #vsphere_template = "${}"
    
    
}
