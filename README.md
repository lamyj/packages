# Packages

## APT repository

The following commands must be run by root, either directly or using `sudo`.
* Add required packages
      
      apt-get install gnupg software-properties-common wget

* Fetch the public key of the repository:

      wget -O - http://dl.bintray.com/lamyj/generic/gpg.key | apt-key add -

* Add the repository:

      add-apt-repository "deb http://dl.bintray.com/lamyj/generic/apt $(lsb_release -cs) main"

* Update the package database: `apt-get update`

## RPM repository

The following steps must be run by root, either directly or using `sudo`.

* Add the [EPEL](https://fedoraproject.org/wiki/EPEL) repository:

      yum install epel-release

* Add the [PUIAS Computational](http://springdale.math.ias.edu/data/puias/computational) repository:

      cat > puias-computational.repo << 'EOF'
      [puias-computational]
      name=Scientific and research packages from Springdale 7
      baseurl=http://springdale.math.ias.edu/data/puias/computational/$releasever/$basearch
      enabled=1
      gpgcheck=1
      repo_gpgcheck=0
      gpgkey=http://springdale.math.ias.edu/data/puias/$releasever/$basearch/os/RPM-GPG-KEY-puias
      EOF
      yum-config-manager --add-repo puias-computational.repo

* Add the repository:

      yum-config-manager --add-repo http://dl.bintray.com/lamyj/generic/rpm/centos/7/lamyj.repo
