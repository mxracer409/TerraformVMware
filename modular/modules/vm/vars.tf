variable "vsphere_datacenter" {
    description = "The vsphere datacenter id. the value comes from the datagather module output"
}

variable "vsphere_datastore" {
    description = "The vsphere datastore for the VM. value comes form datagather module output"
}

variable "vsphere_compute_cluster" {
    description = "The vsphere compute cluster for the VM so we can get the resource pool ID. value from datagather module"
}

variable "vsphere_network" {
    description = "The vsphere network ID to attache VM to. value comes from datagather module output"
}





/*
variable "VM_name" {
    description = "the name the VM in vCenter"
    default = "Ubuntu_TF_Clone"
}

variable "cpus" {
    description = "number of cpus for vm"
    default = 1
}

variable "RAM" {
    description = "number in MBs of RAM for vm"
    default = 1024
}

variable "disk_label" {
    description = "name for the vm disk created"
    default = "UbuntuClone"
}

###### Host costomization variables ######
variable "hostname" {
    description = "virtual server host name to use"
    default = "terraform-test"
}

variable "domain" {
    description = "the domain name for the virtual server"
    default = "test.internal"
}

variable "IP_address" {
    description = "the IPv4 address for the virtual server"
    default = "192.168.1.10"
}

variable "IP_netmask" {
    description = "the IPv4 netmask for the virtual server"
    default = "255.255.255.0"
}

variable "Default_Gateway" {
    description = "the default gateway for the virtual server"
    default = "192.168.1.1"
}
*/
