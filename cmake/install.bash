#!/usr/bin/env bash


# Download, extract, compile and install the source code cmake-3.22.2.tar.gz 
# from https://cmake.org/download/
wget https://github.com/Kitware/CMake/releases/download/v3.22.2/cmake-3.22.2.tar.gz
tar -zxvf cmake-3.22.2.tar.gz
cd cmake-3.22.2
./bootstrap --prefix=/usr/local
make
sudo make install
#ln -s /usr/local/bin/cmake /usr/bin/cmake
#sudo make uninstall

# Alternatively (Recommend), download tarball from https://github.com/Kitware/CMake/releases 
#tar -zxvf cmake-3.22.2-linux-x86_64.tar.gz -C /usr/local/
#cat /etc/profile
#export CMAKE_ROOT=/usr/local/cmake-3.22.2-linux-x86_64
#export PATH=$PATH:$CMAKE_ROOT/bin
