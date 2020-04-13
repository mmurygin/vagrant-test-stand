#!/bin/bash

set -e

if which puppet; then
    echo "Puppet already installed..."
else
    echo "Installing puppet..."
    wget https://apt.puppetlabs.com/puppet6-release-bionic.deb
    sudo dpkg -i puppet6-release-bionic.deb
    sudo apt-get update
    sudo apt-get install puppet-agent -y
    sudo ln -s /opt/puppetlabs/bin/puppet /usr/local/bin/puppet
fi

if which gem; then
    echo "Gem is already installed"
else
    sudo apt install -y ruby-full ruby-bundler build-essential
fi

if which r10k; then
    echo "R10k is already installed"
else
    echo "Setting up r10k"
    sudo gem install r10k
fi

echo "Install puppet modules"
sudo r10k puppetfile install --puppetfile=/vagrant/provision/Puppetfile --moduledir=/etc/puppetlabs/code/environments/production/modules

echo "Done"
