if node['platform'] =='ubuntu'
    default['mywebserver']['mywebpackage']='apache2'
    end
    
    
if node['platform'] =='amazon'
    default['mywebserver']['mywebpackage']='httpd'
    end



default['mywebservercookbook']['mywebpack']='git'   #1
force_default['mywebservercookbook']['mywebpack']='tree'    #5


default['platform']='maha'  #1

force_default['chef_client']['interval']    = '120' #5
force_default['chef_client']['splay']       = '30'  #1