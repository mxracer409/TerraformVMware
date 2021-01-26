######################################
### Build a Unbuntu VM from an ISO ###
######################################

resource "vsphere_virtual_machine" "vm" {
  name              = "Ubuntu_TF"
  resource_pool_id  = var.vsphere_compute_cluster.resource_pool_id
  #resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id      = var.vsphere_datastore.id

  num_cpus = 1
  memory   = 1024
  guest_id = "ubuntu64Guest"
  #this is the OS identification when creating a VM - look this up at https://code.vmware.com/apis/358/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html
  wait_for_guest_net_timeout = 0
  scsi_type = "lsilogic-sas"

  network_interface {
    network_id = var.vsphere_network.id
  }

  disk {
    label  = "Ubuntu"
    size  = 25
    #thin_provisioned = "${data.vsphere_virtual_machine.template.disks.0.thin_provisioned}"
    thin_provisioned = true
    unit_number = 0
  }

  cdrom {
    datastore_id = var.vsphere_datastore.id #the data store the ISO is located
    #path = "vStorage1/Ubuntu/ubuntu-16.04.iso"
    path = "Ubuntu/ubuntu-16.04.iso"
  }
}






/*
#################################
#### clone a VM from Template ###
#################################

resource "vsphere_virtual_machine" "Clone1" {
  name              = "${var.VM_name}"
  resource_pool_id  = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id      = data.vsphere_datastore.datastore.id

  num_cpus = "${var.cpus}"
  memory   = "${var.RAM}" 
  guest_id = data.vsphere_virtual_machine.template.guest_id
  scsi_type = data.vsphere_virtual_machine.template.scsi_type
  wait_for_guest_net_timeout = 10
  
  network_interface {
    network_id = data.vsphere_network.network.id
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }

  disk {
    label = ${var.disk_label} 
    size  = data.vsphere_virtual_machine.template.disks.0.size
    thin_provisioned = data.vsphere_virtual_machine.template.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
    
    #linux OS customizations require LVM#
    customize {
      linux_options {
        host_name = "${var.hostname}"
        domain = "${var.domain}" 
      }
    
      network_interface {
        ipv4_address = "${var.ipv4_address}"
        ipv4_netmask = "${var.ipv4_netmask}"
      }
    
      ipv4_gateway = "${var.ipv4_gateway}"
    }
  }
}
*/
