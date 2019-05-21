#!/bin/bash

# JENKINS
sudo curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins
sudo systemctl start jenkins
systemctl status jenkins
sudo systemctl enable jenkins

# FIREWALL
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

# SUIVRE INDICATIONS
