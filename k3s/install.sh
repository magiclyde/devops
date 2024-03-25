#!/bin/bash

curl -sfL https://rancher-mirror.rancher.cn/k3s/k3s-install.sh | INSTALL_K3S_VERSION=v1.28.4-k3s1 INSTALL_K3S_MIRROR=cn sh -

