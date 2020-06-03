variable "admin_user"{
  description = "vCenter Admin username"
  default = "administrator@vsphere.local"
}

variable "admin_password" {
  description = "admin user password"
}

variable "vcenter_server" {
  description = "vcenter server name or IP"
  default = "vc.lab.local"
}

