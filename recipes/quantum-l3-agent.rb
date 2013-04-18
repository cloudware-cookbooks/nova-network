#
# Cookbook Name:: nova-network
# Recipe:: quantum-l3-agent
#

include_recipe "ktc-quantum::sysctl"
include_recipe "ktc-quantum::l3-agent"

