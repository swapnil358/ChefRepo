execute 'reload systemd deamon' do
    command 'sudo systemctl daemon-reload'
    action :run
    not_if { ::File.exist?('/home/ubuntu/mytomstartfile') }
end


execute 'start tomcat service' do
    command 'sudo systemctl start tomcat'
    action :run
    not_if { ::File.exist?('/home/ubuntu/mytomstartfile') }
end


execute 'enable Tomcat starting up with the system' do
    command 'sudo systemctl enable tomcat'
    action :run
    not_if { ::File.exist?('/home/ubuntu/mytomstartfile') }
end


file '/home/ubuntu/mytomstartfile' do
    content 'content'
    mode '0755'
    action :create
end

