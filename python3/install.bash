#!/usr/bin/env bash

yum install python-devel -y
yum install libffi-devel -y

cd /tmp
wget https://www.python.org/ftp/python/3.7.6/Python-3.7.6.tgz
tar -zxvf Python-3.7.6.tgz
cd Python-3.7.6
./configure --prefix=/usr/local/python3.7
make
sudo make install
