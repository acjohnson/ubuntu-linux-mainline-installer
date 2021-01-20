#!/bin/bash
rm -rf amd64
lftp -c 'mirror --parallel=100 https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.10/amd64/ ;exit'
apt install $(pwd)/amd64/linux*all*.deb $(pwd)/amd64/linux*generic*.deb

