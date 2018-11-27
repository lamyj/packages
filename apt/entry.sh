#!/bin/bash

set -e
set -u

apt-get update
apt-get upgrade -y
apt-get install -y --no-install-recommends adduser sudo python

adduser --disabled-password --gecos '' somebody
chown -R somebody:somebody ~somebody
echo 'somebody ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
sudo -u somebody -H -E "$@"
