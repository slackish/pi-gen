#!/bin/bash

echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' | tee -a /etc/apt/sources.list.d/100-ubnt.list > /dev/null
wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ubnt.com/unifi/unifi-repo.gpg
apt-get update
