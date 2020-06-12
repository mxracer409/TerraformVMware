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
    source = "/modules/datagather/datagather.tf"
    
}

module "makevm_module" {
    #provider = vsphere
    source = "/modules/vm/makevm.tf"
    vsphere_datacenter = "${}"
    vsphere_datastore = "${}"
    vsphere_compute_cluster = "${}"
    vsphere_network = "${}"
    vsphere_template = "${}"
    
    
}


/*
output "vsphere_datacenter" {
    value = "${vsphere_datacenter.dc.id}"
}

output "vsphere_datastore" {
    value = "${vsphere_datacenter.datastore.id}"
}

output "vsphere_compute_cluster" {
    value = "${vsphere_datacenter.cluster.id}"
}

#output "vsphere_resource_pool" {
#    value = "${vsphere_datacenter.pool.id}"
#}

output "vsphere_network" {
    value = "${vsphere_datacenter.network.id}"
}

output "vsphere_template" {
  value = "${vsphere_datacenter.template.id}"
}
*/
