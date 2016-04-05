directory '/tmp/hello' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
execute 'apache_install' do
  command 'sudo yum install httpd'
end
