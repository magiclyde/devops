#!/usr/bin/env bash

wget http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz
gunzip autoconf-2.69.tar.gz
tar xvf autoconf-2.69.tar
cd autoconf-2.69
./configure
make
make install
autoconf --version
