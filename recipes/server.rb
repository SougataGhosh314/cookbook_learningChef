#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2021 The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

#file '/var/www/html/index.html' do
#  content "<h1>Hello world!!!</h1>
#    <h2>IP address: #{node["ipaddress"]}</h2>
#    <h2>IP address: #{node["hostname"]}</h2>"
#end

service 'httpd' do
  action [:start, :enable]
end
