


############################################################################
####### Defining vcenter data and querying vcenter for object ids   #######
############################################################################

data "vsphere_datacenter" "dc" {
  #default value is "Datacenter" as defined in the vars.tf file
  name = "${var.vsphere_datacenter_name}"
}

data "vsphere_datastore" "datastore" {
  name          = "${var.vsphere_datastore_name}"
  #default value is "vStorage1" as defined in the vars.tf file
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_compute_cluster" "cluster" {
  name          = "${var.vsphere_compute_cluster_name}"
  #default value is "Lab" as defined in the vars.tf file
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

#data "vsphere_resource_pool" "pool" {
#  name          = "${vsphere_resurce_pool_name}"
#  #default value is "LabPool" as defined in the vars.tf file
#  datacenter_id = "${data.vsphere_datacenter.dc.id}"
#}

data "vsphere_network" "network" {
  name          = "${var.vsphere_network_name}"
  #default value is "Sim-mgmt" as defined in the vars.tf file
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

#data "vsphere_virtual_machine" "template" {
#  name = "${var.vsphere_virtual_machine_template_name}"
#  #default value is "Ubuntu_TF_Template" as defined in the vars.tf file
#  datacenter_id = "${data.vsphere_datacenter.dc.id}"
#}



###############################################################
####### below here is from the noVar example for comparision ########
###############################################################
/*
data "vsphere_datacenter" "dc" {
  name = "Datacenter"
}

data "vsphere_datastore" "datastore" {
  name          = "vStorage1"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_compute_cluster" "cluster" {
  name          = "Lab"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

#data "vsphere_resource_pool" "pool" {
#  name          = "LabPool"
#  datacenter_id = "${data.vsphere_datacenter.dc.id}"
#}

data "vsphere_network" "network" {
  name          = "Sim-Mgmt"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
*/
