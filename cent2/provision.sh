#!/bin/bash

# fix locale problem
echo "export LC_ALL=en_US.utf-8" >> /etc/profile.d/locale.sh
echo "export LANG=en_US.utf-8" >> /etc/profile.d/locale.sh
mandb

yum install -y vim

echo "10.0.10.2 s1.home.local" >> /etc/hosts
echo "10.0.10.3 s2.home.local" >> /etc/hosts
echo "10.0.10.4 s3.home.local" >> /etc/hosts

wget https://raw.githubusercontent.com/muryginm/vim-config/master/.vimrc -O /root/.vimrc
cp /root/.vimrc /home/vagrant/.vimrc
chown vagrant /home/vagrant/.vimrc

