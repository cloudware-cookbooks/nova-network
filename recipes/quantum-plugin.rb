#
# Cookbook Name:: nova-network
# Recipe:: quantum-plugin
#

include_recipe "ktc-quantum::plugin"

chef_gem "chef-rewind"
require 'chef/rewind'

rewind :service => "quantum-plugin-linuxbridge-agent" do
  subscribes :restart, "template[/etc/quantum/quantum.conf]", :delayed
  cookbook_name "nova-network"
end

