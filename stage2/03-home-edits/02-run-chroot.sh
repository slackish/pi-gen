#!/bin/bash

# disable mongo from starting
systemctl disable mongodb

# start ssh at boot
systemctl enable ssh

# setup hostname
echo "mcp" > /etc/hostname

# setup google auth bits
# this will break ssh, you must run google_authenticator to setup your pi user
echo "auth required pam_google_authenticator.so" >> /etc/pam.d/sshd
sed -i 's/ChallengeResponseAuthentication\ no/ChallengeResponseAuthentication\ yes/' /etc/ssh/sshd_config

# locale bits
cp /usr/share/zoneinfo/America/Detroit /etc/timezone
# not sure how to force this, going to leave this alone for now
#echo en_US.UTF-8 UTF-8 > /etc/locale.gen
#locale-gen



