# Packages

## APT repository

The following commands must be run by root, either directly or using `sudo`.
* Add required packages
  * For Ubuntu 16.04 (xenial), Ubuntu 14.04 (trusty) and Debian 8 (jessie):

          apt-get install software-properties-common

  * For Ubuntu 12.04 (precise) and Debian 7 (wheezy):

          apt-get install python-software-properties

* Fetch the public key of the repository:

        wget -O - http://dl.bintray.com/lamyj/generic/gpg.key | apt-key add -

* Add the repository:

        add-apt-repository "deb http://dl.bintray.com/lamyj/generic/apt $(lsb_release -cs) main"

* Update the package database: `apt-get update`

## RPM repository

**CAUTION** only CentOS 7 is currently supported.

The following steps must be run by root, either directly or using `sudo`.

Add a new repository by storing the following in `/etc/yum/repos.d/lamyj.repo`:

```
[lamyj]
name=Packages by lamyj
baseurl=http://dl.bintray.com/lamyj/generic/rpm/centos/7/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=http://dl.bintray.com/lamyj/generic/gpg.key
```

Some of the packages require [EPEL](https://fedoraproject.org/wiki/EPEL):

```bash
yum install epel-release
```
