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
    source = "/modules/datagather/datagather.tf"
    #provider = vsphere
}

module "makevm_module" {
    source = "/modules/vm/makevm.tf"
    #provider = vsphere
    
}








########
variable "vsphere_datacenter_name" {
    description = "The desired vsphere datacenter name for the VM location"
    default = "Datacenter"
}

variable "vsphere_datastore_name" {
    description = "The desired vsphere datastore location for the VM"
    default = "vStorage1"
}

variable "vsphere_compute_cluster_name" {
    description = "The compute cluster the VM will be a part of"
    default = "Lab"
}

#variable "vsphere_resurce_pool_name" {
#    description = "The name of resource pool in vcenter to place the VM"
#    default = "LabPool"
#}

variable "vsphere_network_name" {
    description = "the VM network to assign the VM nic to - this can be more than 1 network but example is 1"
    default = "Sim-mgmt"
}

variable "vsphere_virtual_machine_template_name" {
    description = "The name of the VM template to clone"
    default = "Ubuntu_TF_Template"
}