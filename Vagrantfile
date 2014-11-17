# -*- mode: ruby -*-
# vi: set ft=ruby :

INSTALL_DOCKER = <<SCRIPT
  # Install Docker.
  curl -sSL https://get.docker.io/ubuntu/ | sudo sh

  # Add the vagrant user to the docker group to run docker commands without sudo.
  sudo gpasswd -a vagrant docker
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision "shell", inline: INSTALL_DOCKER
end
