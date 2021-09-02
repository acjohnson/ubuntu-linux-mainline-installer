#!/bin/bash

#VERSION="5.10"
#VERSION="5.10.36"

VERSION="5.10.61"

REPO="https://kernel.ubuntu.com/~kernel-ppa/mainline/v${VERSION}/amd64/"

rm -rf amd64
lftp -c "mirror --parallel=100 ${REPO}; exit"
apt install $(pwd)/amd64/linux*$VERSION*all*.deb $(pwd)/amd64/linux*$VERSION*generic*.deb

