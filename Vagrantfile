# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "cent" do |host|
    host.vm.box = "centos/7"
    host.vm.box_check_update = false

    host.vm.hostname = "cent"
    host.vm.network "private_network", ip: "192.168.100.11"

    host.vm.provision :shell, inline: "echo 192.168.100.12 ub >> /etc/hosts"
  end

  config.vm.define "ub" do |host|
    host.vm.box = "ubuntu/bionic64"
    host.vm.box_check_update = false

    host.vm.hostname = "ub"
    host.vm.network "private_network", ip: "192.168.100.12"

    host.vm.provision :shell, inline: "echo 192.168.100.11 cent >> /etc/hosts"
  end
end
