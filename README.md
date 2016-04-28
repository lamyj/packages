# Packages

## APT repository

* Add required packages
  * Make sure apt can fetch over HTTPS: `apt-get install apt-transport-https`
  * For Ubuntu 14.04 (trusty) and Debian 8 (jessie): `apt-get install software-properties-common`
  * For Ubuntu 12.04 (precise) and Debian 7 (wheezy): `apt-get install python-software-properties`
* Fetch the public key of the repository: `wget -O - https://raw.githubusercontent.com/lamyj/packages/master/gpg.key | apt-key add -`
* Add the repository: `add-apt-repository https://raw.githubusercontent.com/lamyj/packages/master/apt`
* Update the package database: `apt-get update`

To add this repository to `pbuilder`, create a file named 
`/var/cache/pbuilder/hook.d/D01extra-packages` with the following content:

```Bash
#!/bin/sh
set -e

apt-get install -y apt-transport-https ca-certificates lsb-release

apt-key adv --recv-keys --keyserver pool.sks-keyservers.net 3EBD1CD4

dist=$(lsb_release -cs)
echo "deb https://raw.githubusercontent.com/lamyj/packages/master/apt ${dist} main" >> /etc/apt/sources.list
apt-get update
```
