#
# Cookbook:: apache2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

node.default['port'] = '81'
node.default['secureport'] = '8443'

package 'apache2' do
  action :install
end

#template '/etc/httpd/conf/httpd.conf' do
 # source 'httpd.conf.erb'
#end

service 'apache2' do
  action [:enable, :start]
end

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  mode '0644'
end
