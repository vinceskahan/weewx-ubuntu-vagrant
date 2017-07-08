# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # base box
  config.vm.box = "ubuntu/xenial64"

  # forward vagrant host port 8080 to port 80 within the VM
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # set the ram to a reasonable value to speed installation up
  config.vm.provider "virtualbox" do |vb|
     vb.memory = "1024"
  end

  # run our provisioning script
  config.vm.provision :shell, path: "provision.sh"

end
