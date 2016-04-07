bash 'install-ruby' do
  code <<-EOH
 sudo apt-get install gcc-c++ patch readline readline-devel zlib zlib-devel 
 sudo apt-get install libyaml-devel libffi-devel openssl-devel make 
 sudo apt-get install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel
 sudo curl -sSL https://rvm.io/mpapis.asc | gpg --import -
 sudo curl -L get.rvm.io | bash -s stable
 sudo source /home/ubuntu/.rvm/scripts/rvm 
 sudo rvm reload
 sudo rvm requirements run
 sudo rvm install 2.3.0
 sudo apt-get update
 sudo rvm use ruby-2.3.0@rails4.2 --create
 sudo gem install rails --version=4.2.6
 sudo apt-get update
 sudo gem install unicorn
 sudo apt-get update
    EOH
end
