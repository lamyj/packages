#!/bin/bash

set -e
set -u

yum install -q -y sudo

adduser -p '' somebody
chown -R somebody:somebody ~somebody
echo 'somebody ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
sudo -u somebody -H -E "$@"
