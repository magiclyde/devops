#!/usr/bin/env bash

# CentOS 7 already comes with GCC 4.

# On CentOS 7, you can install GCC 9 from Developer Toolset. 
# First you need to enable the Software Collections repository:
sudo yum install centos-release-scl -y

# Then you can install GCC 9 and its C++ compiler:
sudo yum install devtoolset-9 -y

# To switch to a shell which defaults gcc and g++ to this GCC version, use:
scl enable devtoolset-9 bash
