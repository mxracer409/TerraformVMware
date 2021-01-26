
######################################################################################################
### Getting the values out of a module to be used later on in either the main.tf or other modules ####
######################################################################################################



output "vsphere_datacenter" {
    value = "${data.vsphere_datacenter.dc}"
}

output "vsphere_datastore" {
    value = "${data.vsphere_datastore.datastore}"
}

output "vsphere_compute_cluster" {
    value = "${data.vsphere_compute_cluster.cluster}"
}

#output "vsphere_resource_pool" {
#    value = "${data.vsphere_resource_pool.pool}"
#}

output "vsphere_network" {
    value = "${data.vsphere_network.network}"
}

#output "vsphere_template" {
#  value = "${data.vsphere_vsphere_template.template}"
#}





