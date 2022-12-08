#!/usr/bin/env bash
# https://segmentfault.com/a/1190000040325948/en
# https://github.com/chobits/ngx_http_proxy_connect_module

cd /tmp

VERSION=1.19.3.1
BUNDLE_VERSION=${VERSION:0:${#VERSION}-2}

git clone https://github.com/chobits/ngx_http_proxy_connect_module.git

wget https://openresty.org/download/openresty-$VERSION.tar.gz
tar -xzvf openresty-$VERSION.tar.gz

cd /tmp/openresty-$VERSION/bundle/nginx-$BUNDLE_VERSION
patch -p1 < /tmp/ngx_http_proxy_connect_module/patch/proxy_connect_rewrite_1018.patch

cd /tmp/openresty-$VERSION/
./configure --with-http_stub_status_module --with-http_v2_module --add-module=/tmp/ngx_http_proxy_connect_module
make
/tmp/openresty-$VERSION/build/nginx-$BUNDLE_VERSION/objs/nginx -V
#sudo make install
