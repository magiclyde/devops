#!/usr/bin/env bash


wget https://sourceforge.net/projects/re2c/files/0.16/re2c-0.16.tar.gz
tar zxf re2c-0.16.tar.gz && cd re2c-0.16
./configure
make && make install
