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