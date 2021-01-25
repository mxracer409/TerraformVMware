
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

#variable "vsphere_virtual_machine_template_name" {
#    description = "The name of the VM template to clone"
#    default = "Ubuntu_TF_Template"
#}


