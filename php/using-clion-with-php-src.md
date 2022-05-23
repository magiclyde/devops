using-clion-with-php-src
===================

```shell
pip3 install compiledb

git clone https://github.com/php/php-src.git ~/repos/php/php-src
cd ~/repos/php/php-src
git checkout -b PHP-7.2.30
./buildconf
./configure \
    --prefix=$HOME/builds/php/7.2.30 \
    --disable-all \
    --disable-cgi \
    --enable-debug \
    --enable-zts

compiledb make
```

refer
===================
https://dev.to/ramsey/using-clion-with-php-src-4me0
