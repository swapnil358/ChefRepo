#
# Cookbook:: mywebservercookbook
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.
include_recipe 'mywebservercookbook::mywebserver'
include_recipe 'mywebservercookbook::mysql'
include_recipe 'chef-client::default'
include_recipe 'mywebservercookbook::installjava'

