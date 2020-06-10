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