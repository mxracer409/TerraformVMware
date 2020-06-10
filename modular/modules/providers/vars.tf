#Variable defining section 
#If desired this can be broken out into a seperate variables.tf file
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
