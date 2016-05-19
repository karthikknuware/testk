bash 'install-ruby' do
  code <<-EOH
  curl -sSL https://rvm.io/mpapis.asc | gpg --import -
  curl -L get.rvm.io | bash -s stable
  #source /etc/profile.d/rvm.sh 
  source /home/ubuntu/.rvm/scripts/rvm
 rvm reload
 rvm requirements run
 rvm install 2.3.0
 rvm use 2.3.0 --default
 rvm use ruby-2.3.0@rails4.2 --create
 gem install rails --version=4.2.6
 gem install unicorn
 rvm use ruby-2.3.0@rails4.2 --create
 #git clone orange-web-app from orange-ntri repository
 #run bundle install from orange-web-app cloned folder
 #run this command before bundle install command sudo apt-get install postgresql postgresql-contrib libpq-dev 
   EOH
end
