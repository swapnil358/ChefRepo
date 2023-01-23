#
# Cookbook:: mytomcatubuntu20
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.


include_recipe 'mytomcatubuntu20::createuser'
include_recipe 'mytomcatubuntu20::installjava'
include_recipe 'mytomcatubuntu20::donwload'
include_recipe 'mytomcatubuntu20::permissions'
include_recipe 'mytomcatubuntu20::configdashboard'
include_recipe 'mytomcatubuntu20::starttomcat'
include_recipe 'mytomcatubuntu20::deployapp'