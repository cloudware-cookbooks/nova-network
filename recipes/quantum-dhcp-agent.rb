#
# Cookbook Name:: nova-network
# Recipe:: quantum-dhcp-agent
#

include_recipe "ktc-quantum::dhcp-agent"

chef_gem "chef-rewind"
require 'chef/rewind'

rewind :service => "quantum-dhcp-agent" do
  subscribes :restart, "template[/etc/quantum/quantum.conf]", :delayed
  cookbook_name "nova-network"
end

