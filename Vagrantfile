# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu1810"

  config.vm.provision "shell", inline: <<-SHELL
    apt-get -qq update
    apt-get install -y python
  SHELL

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "tasks/install_docker.yml"
  end
end
