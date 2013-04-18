#
# Cookbook Name:: nova-network
# Recipe:: quantum-l3-agent
#

include_recipe "ktc-quantum::sysctl"
include_recipe "ktc-quantum::l3-agent"

chef_gem "chef-rewind"
require 'chef/rewind'

rewind :service => "quantum-l3-agent" do
  subscribes :restart, "template[/etc/quantum/quantum.conf]", :delayed
  cookbook_name "nova-network"
end

