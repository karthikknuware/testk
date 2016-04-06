package 'Install-ruby' do
 package_name [‘gcc-c++ ’, ‘patch’, ‘readline’, ‘readline-devel’, ‘zlib’, ‘zlib-devel’, ‘libyaml-devel’, ‘libffi-devel’, ‘openssl-devel’, ‘make’, ‘bzip2’, ‘autoconf’, ‘automake’, ‘libtool’, ‘bison’, ‘iconv-devel’, ‘sqlite-devel’]
  action :install
end

bash 'install-ruby' do
  code <<-EOH
 yum install gcc-c++ patch readline readline-devel zlib zlib-devel 
 yum install libyaml-devel libffi-devel openssl-devel make 
 yum install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel
 curl -sSL https://rvm.io/mpapis.asc | gpg --import -
 curl -L get.rvm.io | bash -s stable
 source /etc/profile.d/rvm.sh
 rvm reload
 rvm requirements run
 rvm install 2.3.0
    EOH
end

#execute 'ruby_install' do
 # command 'sudo yum install httpd'
#end
#directory '/tmp/hello2' do
 # owner 'root'
 # group 'root'
  #mode '0755'
  #action :create
#end
