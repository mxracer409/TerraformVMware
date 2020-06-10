#modularizing the vsphere provider example

/*
#Variable defining section 
#If desired this can be defined here or broken out into a seperate variables.tf (vars.tf) file like it is here

variable "admin_user" {
    default = "administrator@vsphere.local"
    description = "This is the vsphere admin account"
}

variable "admin_password" {
    description = "This is the vsphere admin password"
    #if left blank terraform will prompt for user input on run for the password
}

variable "vcenter_server" {
    description = "the address of the vCenter server (IP or DNS name)"
    default = "vc.lab.local"
}

variable "allow_cert" {
    description = "allow self signed certs from vcenter or not"
    default = "true"
}
*/

#The variablized provider block

provider "vsphere" {
  user = "${var.admin_user}"
  password = "${var.admin_password}"
  vsphere_server = "${var.vcenter_server}"
# version = "1.2.3.4" - if desired specific version of provider
# If you have a self-signed cert
  allow_unverified_ssl = "${var.allow_cert}"
#true or false values
}