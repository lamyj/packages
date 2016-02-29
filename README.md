# Packages

## APT repository

* Add required packages
  * Make sure apt can fetch over HTTPS: `apt-get install apt-transport-https`
  * For Ubuntu 14.04 (trusty) and Debian 8 (jessie): `apt-get install software-properties-common`
  * For Ubuntu 12.04 (precise) and Debian 7 (wheezy): `apt-get install python-software-properties`
* Fetch the public key of the repository: `apt-key adv --recv-keys --keyserver pool.sks-keyservers.net 3EBD1CD4`
* Add the repository: `add-apt-repository https://raw.githubusercontent.com/lamyj/packages/master/apt`
* Update the package database: `apt-get update`
