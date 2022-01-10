#!/bin/bash
set -eu
apt-get update
apt-get -y install gcc g++ make git python3 chrpath cpio diffstat gawk wget locales

sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
dpkg-reconfigure --frontend=noninteractive locales
update-locale LANG=en_US.UTF-8


useradd -s /bin/bash -d /home/builder builder
