
######################################################################################################
### Getting the values out of a module to be used later on in either the main.tf or other modules ####
######################################################################################################



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





