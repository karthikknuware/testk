bash 'install-ruby' do
  code <<-EOH
  apt-get install gcc-c++ patch readline readline-devel zlib zlib-devel 
  apt-get install libyaml-devel libffi-devel openssl-devel make 
  apt-get install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel
  curl -sSL https://rvm.io/mpapis.asc | gpg --import -
  curl -L get.rvm.io | bash -s stable
  source /home/ubuntu/.rvm/scripts/rvm 
 rvm reload
 rvm requirements run
 rvm install 2.3.0
 rvm use ruby-2.3.0@rails4.2 --create
 gem install rails --version=4.2.6
 gem install unicorn
 apt-get update
    EOH
end
