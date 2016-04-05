directory '/tmp/hello' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
#execute 'apache_install' do
 # command 'sudo yum install httpd'
#end

package 'Install Apache' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
end
