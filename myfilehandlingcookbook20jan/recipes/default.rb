#
# Cookbook:: myfilehandlingcookbook20jan
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

package 'tree' do
    action :install
end

file '/home/ubuntu/myfirstfile' do
    content 'this is my first file'
    mode '0755'
    action :create
end


cookbook_file '/home/ubuntu/myfile' do
    source 'myfile'
    mode '0755'
    action :create
end

package 'apache2' do
    action :install
end

template '/var/www/html/index.html' do
    source 'mydynamicfile.erb'
    mode '0755'
    action :create
end

remote_file '/home/ubuntu/apache-tomcat-5.5.20.tar.gz' do
    source 'https://archive.apache.org/dist/tomcat/tomcat-5/v5.5.20/bin/apache-tomcat-5.5.20.tar.gz'
    mode '0755'
    action :create
end


directory '/home/ubuntu/myfolder' do
    mode '0755'
    action :create
end



