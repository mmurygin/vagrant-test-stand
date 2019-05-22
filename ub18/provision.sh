#!/bin/bash

# fix locale problem
echo "export LC_ALL=en_US.utf-8" >> /etc/profile.d/locale.sh
echo "export LANG=en_US.utf-8" >> /etc/profile.d/locale.sh
mandb

yum install -y vim wget

wget https://raw.githubusercontent.com/muryginm/vim-config/master/.vimrc -O /root/.vimrc
cp /root/.vimrc /home/vagrant/.vimrc
chown vagrant /home/vagrant/.vimrc

