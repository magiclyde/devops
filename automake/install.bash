#!/usr/bin/env bash

wget http://ftp.gnu.org/gnu/automake/automake-1.14.tar.gz
tar xvzf automake-1.14.tar.gz
cd automake-1.14
./configure
make
sudo make install
#sudo make uninstall
automake --version
