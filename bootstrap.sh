#!/bin/bash
# install dev environment on CentOS
# need 'su' first 

yum groupinstall "Development Tools"

# ====================
# programming language
# ====================

# nodejs
curl -O http://download-i2.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
rpm -ivh epel-release-6-8.noarch.rpm
yum install npm --enablerepo=epel

# grunt
npm install -g grunt-cli

# coffee-script
npm install -g coffee-script

# ruby
yum install ruby

# pip
wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
python ez_setup.py
rm ez_setup.py

wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
rm get-pip.py

# virtualenv
pip install virtualenv

# ====================
# git
# ====================
ssh-keygen -t rsa -C "lvkun2006@gmail.com"

# ====================
# clone github project
# ====================
