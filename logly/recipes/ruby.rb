# ruby on rails
bash 'install-ruby' do
  code <<-EOH
  curl -sSL https://rvm.io/mpapis.asc | gpg --import -
  curl -L get.rvm.io | bash -s stable
  source /etc/profile.d/rvm.sh 
  #source /home/ubuntu/.rvm/scripts/rvm
 rvm reload
 rvm requirements run
 rvm install 2.3.0
 rvm use 2.3.0 --default
 rvm use ruby-2.3.0@rails4.2 --create
 gem install rails --version=4.2.6
 gem install unicorn
 #rvm use ruby-2.3.0@rails4.2 --create
 git clone https://github.com/karthikkoptit/rails.git
 cd /home/karthik/rails
 EOH
end
 #cd /home/ubuntu
 #git clone orange-web-app from orange-ntri repository
  if node[:platform_family].include?('rhel')
  %w( postgresql-devel openssl-devel policycoreutils
    policycoreutils-python readline-devel bzip2)
else
  %w( postgresql postgresql-contrib libpq-dev)
end.each do |package_name|
  package package_name do
    action :install
  end
end

 #run bundle install from orange-web-app cloned folder
 
 #run this command before bundle install command sudo apt-get install postgresql postgresql-contrib libpq-dev 
 bash "insert_line" do
  user "root"
  code <<-EOS
  echo "development:
        adapter: postgresql
        encoding: utf8
        host: diyfdb-integ2.caibfusn2myj.us-east-1.rds.amazonaws.com
        user: gfuser
        password: thisisareallylongpassword1
        database: diyfdb
        port: 5444
        pool: 100" >> /home/ubuntu/orange-web-app/config/database.yml
  EOS
end  
 #cd orange-web-app/config vi database.yml %change the configuration for postgres
 #install redis
 bash 'install-ruby-on-rails' do
  code <<-EOH
 sudo apt-get update
 sudo apt-get install redis-server
 cd orange-web-app
 rails s
    EOH
end
