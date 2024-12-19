#!/usr/bin/env bash

tomcat_version=10.1.34
JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
sudo apt update

sudo apt install openjdk-17-jre-headless -y

mkdir ~/tomcat
cd ~/tomcat

wget https://downloads.apache.org/tomcat/tomcat-10/v${tomcat_version}/bin/apache-tomcat-${tomcat_version}.tar.gz

sudo tar xzvf apache-tomcat-${tomcat_version}.tar.gz -C /opt --strip-components=1

sudo useradd -r tomcat
sudo chown -R tomcat: /opt/apache-tomcat-${tomcat_version}

sudo tee /etc/systemd/system/tomcat.service > /dev/null <<EOF
[Unit]
Description=Apache Tomcat Web Application Container
After=network.target

[Service]
Type=forking
Environment=JAVA_HOME=${JAVA_HOME}
Environment=CATALINA_PID=/opt/apache-tomcat-${tomcat_version}/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/apache-tomcat-${tomcat_version}
Environment=CATALINA_BASE=/opt/apache-tomcat-${tomcat_version}
Environment='CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
Environment='JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom'

ExecStart=/opt/apache-tomcat-${tomcat_version}/bin/startup.sh
ExecStop=/opt/apache-tomcat-${tomcat_version}/bin/shutdown.sh

User=tomcat
Group=tomcat
UMask=0007
RestartSec=10
Restart=always

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl start tomcat
sudo systemctl enable tomcat

sudo ufw allow 8080/tcp

Ip_address=$(curl ifconfig.me)

echo "Access tomcat at http://${Ip_address}:8080/"