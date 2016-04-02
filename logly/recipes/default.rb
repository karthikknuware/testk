directory '/tmp/itsworks' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

execute 'install-apache2' do
  command 'sudo apt-get install apache2'
end
