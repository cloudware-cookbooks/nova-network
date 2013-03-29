#
# Cookbook Name:: nova-network
# Attributes:: default
#
# Copyright 2013, KT Cloudware, Inc.
#
default["nova"]["network"]["provider"] = "quantum"

# ######################################################################### #
# Quantum Configuration Attributes
# ######################################################################### #
# nova.conf options for quantum
default["quantum"]["network_api_class"] = "nova.network.quantumv2.api.API"
default["quantum"]["auth_strategy"] = "keystone"
default["quantum"]["libvirt_vif_driver"] = "nova.virt.libvirt.vif.LibvirtHybridOVSBridgeDriver"
default["quantum"]["linuxnet_interface_driver"] = "nova.network.linux_net.LinuxOVSInterfaceDriver"
default["quantum"]["firewall_driver"] = "nova.virt.libvirt.firewall.IptablesFirewallDriver"

