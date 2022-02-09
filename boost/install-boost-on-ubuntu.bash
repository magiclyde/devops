#!/usr/bin/env bash
# Install boost on ubuntu20.04

# Install by apt
#sudo apt-get install libboost-all-dev
#dpkg -s libboost-all-dev | grep 'Version'
#Version: 1.71.0.0ubuntu2


# Install from source
# Download the latest tarball
cd /tmp
wget -O boost_1_78_0.tar.gz https://boostorg.jfrog.io/artifactory/main/release/1.78.0/source/boost_1_78_0.tar.gz
tar xzvf boost_1_78_0.tar.gz
cd boost_1_78_0/

# Get the required libraries, main ones are icu for boost::regex support:
sudo apt-get update
sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev libbz2-dev libboost-all-dev

# Boost's bootstrap setup:
./bootstrap.sh --prefix=/usr/local/boost_1_78_0

# Then build it with:
./b2

# and eventually install it:
sudo ./b2 install
