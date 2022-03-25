#!/usr/bin/env bash
# install php zookeeper extension on ubuntu

sudo apt update
sudo apt-get install -y libcppunit-dev ant

# zookeeper c bindings
git clone https://github.com/apache/zookeeper.git
cd zookeeper
git checkout -b 3.5.9-dev origin/branch-3.5.9

ant compile_jute

cd zookeeper-client/zookeeper-client-c
autoreconf -if
./configure --prefix=/usr/local/zookeeper-lib
make
sudo make install

# extension
git clone https://github.com/php-zookeeper/php-zookeeper.git
cd php-zookeeper
phpize
./configure --with-libzookeeper-dir=/usr/local/zookeeper-lib
make
sudo make install
