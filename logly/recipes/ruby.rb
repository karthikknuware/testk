bash 'install-ruby' do
  code <<-EOH
  curl -sSL https://rvm.io/mpapis.asc | gpg --import -
  curl -L get.rvm.io | bash -s stable
  source /home/ubuntu/.rvm/scripts/rvm 
 rvm reload
 rvm requirements run
 rvm install 2.3.0
 rvm use 2.3.0 --default
 rvm use ruby-2.3.0@rails4.2 --create
 gem install rails --version=4.2.6
 gem install unicorn
 rvm use ruby-2.3.0@rails4.2 --create
   EOH
end
