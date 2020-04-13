#!/bin/bash

set -e

if which puppet; then
    echo "Puppet already installed..."
else
    echo "Installing puppet..."
    sudo rpm -Uvh https://yum.puppet.com/puppet6-release-el-7.noarch.rpm
    sudo yum install puppet-agent -y
fi

if which gem; then
    echo "Gem is already installed"
else
    sudo yum install -y rubygems
fi

if which r10k; then
    echo "R10k is already installed"
else
    "echo setup r10k"
    sudo gem install r10k
fi

echo "Done"
