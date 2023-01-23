
user 'tomcat' do
    comment 'tomcat'
    home '/opt/tomcat'
    shell '/bin/false'
    password 'password'
    action :create
end
