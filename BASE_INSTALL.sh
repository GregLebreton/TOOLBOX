#!/bin/bash

# yum update
sudo yum -y update

# GIT
sudo yum -y install git

# JAVA
sudo wget https://download.java.net/java/GA/jdk12/GPL/openjdk-12_linux-x64_bin.tar.gz
sudo tar xzvf openjdk-12_linux-x64_bin.tar.gz
sudo mv jdk-12 /opt/java
sudo touch /etc/profile.d/jdk.sh
sudo vim /etc/profile.d/jdk.sh

	JAVA_HOME=/opt/java
	PATH=$PATH:$JAVA_HOME/bin
	export PATH JAVA_HOME
	
source /etc/profile

# JENKINS
sudo curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins
sudo systemctl start jenkins
systemctl status jenkins
sudo systemctl enable jenkins

# 
