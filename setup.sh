#!/bin/bash
set -eu
apt-get update
apt-get -y install gcc g++ make git python3 chrpath cpio diffstat gawk wget
useradd -s /bin/bash -d /home/builder builder
