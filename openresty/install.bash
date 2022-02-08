#!/usr/bin/env bash

cd /tmp
export VERSION=1.19.3.1
wget https://openresty.org/download/openresty-$VERSION.tar.gz
tar -xzvf openresty-$VERSION.tar.gz
cd openresty-$VERSION/
./configure --with-http_stub_status_module --with-http_v2_module
make
sudo make install
/usr/local/openresty/bin/openresty -v
