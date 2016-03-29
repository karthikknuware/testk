bash "install_something" do
  user "root"
  cwd "/tmp"
  code <<-EOH
    curl -O https://www.loggly.com/install/configure-linux.sh
    sudo bash configure-linux.sh -a karthik -r
  EOH
  end
