#!/bin/bash
set -eu
apt-get update
# Yocto required tools
apt-get -y install gcc g++ make git python3 python3-distutils chrpath cpio diffstat gawk wget locales

# Yocto language sanity check
sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
dpkg-reconfigure --frontend=noninteractive locales
update-locale LANG=en_US.UTF-8

# Add user builder
groupadd --gid 9999 builder
useradd -s /bin/bash -m -d /home/builder --uid 9999 --gid 9999 -G sudo builder
