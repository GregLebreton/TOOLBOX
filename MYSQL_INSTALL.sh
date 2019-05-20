#!/bin/bash


# MANUAL INSTALL
sudo wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum update
sudo yum -y install mysql-server
sudo systemctl start mysqld


# OPTIONS

sudo mysql_secure_installation
mysql -u root -p
create database testdb;
  grant all on testdb.* to 'testuser' identified by 'password';
