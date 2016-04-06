#directory '/tmp/hell3' do
  #owner 'root'
  #group 'root'
  #mode '0755'
  #action :create
#end
bash 'install-ruby' do
  code <<-EOH
 sudo su
 echo 'deb http://apt.newrelic.com/debian/ newrelic non-free' | sudo tee /etc/apt/sources.list.d/newrelic.list
 wget -O- https://download.newrelic.com/548C16BF.gpg | apt-key add -
 wget -O- https://download.newrelic.com/548C16BF.gpg | sudo apt-key add -
 apt-get update
 apt-get install newrelic-sysmond
 nrsysmond-config --set license_key=46e1d325c17b0326c2d4709349d39269dd615d43
 /etc/init.d/newrelic-sysmond start
    EOH
end
