
######################################################################################################
### Getting the values out of a module to be used later on in either the main.tf or other modules ####
######################################################################################################



output "vsphere_datacenter" {
    value = "${data.vsphere_datacenter.dc}"
}

output "vsphere_datastore" {
    value = "${data.vsphere_datacenter.datastore}"
}

output "vsphere_compute_cluster" {
    value = "${data.vsphere_datacenter.cluster}"
}

#output "vsphere_resource_pool" {
#    value = "${data.vsphere_datacenter.pool}"
#}

output "vsphere_network" {
    value = "${data.vsphere_datacenter.network}"
}

#output "vsphere_template" {
#  value = "${data.vsphere_datacenter.template}"
#}





