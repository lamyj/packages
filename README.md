# Packages

## APT repository

* Add required packages
  * For Ubuntu 14.04 (trusty) and Debian 8 (jessie): `apt-get install software-properties-common`
  * For Ubuntu 12.04 (precise) and Debian 7 (wheezy): `apt-get install python-software-properties`
* Fetch the public key of the repository: `wget -O - http://dl.bintray.com/lamyj/generic/gpg.key | apt-key add -`
* Add the repository: `add-apt-repository "deb http://dl.bintray.com/lamyj/generic/apt $(lsb_release -cs) main"`
* Update the package database: `apt-get update`
