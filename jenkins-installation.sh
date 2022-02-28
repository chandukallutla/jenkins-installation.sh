
#!/bin/bash
#jenkins installation
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
#upgrade
yum upgrade -y
#install epel release
yum install epel-release java-11-openjdk-devel
# enable EPEL
amazon-linux-extras install epel  -y
#install open JDK
amazon-linux-extras install java-openjdk11 -y
# install jenkins
yum install jenkins -y
# start the jenkins
systemctl start jenkins
# enable the jenkins
systemctl enable jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword 