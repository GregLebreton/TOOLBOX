#!/ bin/bash


# ENVIRONEMENT
sudo mkdir /workspace
cd /workspace

# DOWNLOAD / INSTALL MAVEN


- sudo wget https://www-us.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz
- sudo tar xzvf apache-maven-3.6.0-bin.tar.gz
- sudo mv apache-maven-3.6.0 /opt/maven


# CONFIGURATION

# 1 MAVEN


(sudo ln -s /opt/apache-maven-3.6.0 /opt/maven)
sudo vim /etc/profile.d/maven.sh

	MAVEN_HOME=/opt/maven
	PATH=$PATH:$MAVEN_HOME/bin
	export PATH MAVEN_HOME
sudo chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh
mvn -version


# 2 JAVA


sudo wget https://download.java.net/java/GA/jdk12/GPL/openjdk-12_linux-x64_bin.tar.gz
sudo tar xzvf openjdk-12_linux-x64_bin.tar.gz
sudo mv jdk-12 /opt/java
sudo touch /etc/profile.d/jdk.sh
sudo vim /etc/profile.d/jdk.sh
 
	JAVA_HOME=/opt/java
	PATH=$PATH:$JAVA_HOME/bin
	export PATH JAVA_HOME
	
source /etc/profile


# DUMMY PROJET


sudo git clone https://github.com/MatArtus/MonPremierProjet.git
cd /MonPremierProjet


# CONFIG PROJET


sudo vim pom.xml

<distributionManagement>
    <snapshotRepository>
      <id>maven-snapshots</id>
      	<name>Snapshot</name>
      <url>http://localhost:8081/repositery/maven-snapshots/</url>
    </snapshotRepository>
</distributionManagement>POM.XML ADD






