#!/usr/bin/env bash

# Ensure the script is run with root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi

# Prompt user for required inputs
read -p "Enter the agent.jar file location (e.g., /home/azureuser): " agent_jar_path
read -p "Enter the Jenkins URL (e.g., http://jenkins.example.com:8080): " jenkins_url
read -p "Enter the Jenkins Node Secret: " jenkins_secret
read -p "Enter the Jenkins Agent Home Directory (e.g., /home/azureuser): " jenkins_agent_home_dir
read -p "Enter the Jenkins User (e.g., azureuser): " jenkins_user

# Validate inputs
if [[ -z "$agent_jar_path" || -z "$jenkins_url" || -z "$jenkins_secret" || -z "$jenkins_agent_home_dir" || -z "$jenkins_user" ]]; then
  echo "All inputs are required. Please re-run the script and provide valid inputs."
  exit 1
fi

# Create the systemd service file
sudo tee /etc/systemd/system/jenkins-agent.service > /dev/null <<EOF
[Unit]
Description=Jenkins Agent
After=network.target

[Service]
User=${jenkins_user}
WorkingDirectory=${jenkins_agent_home_dir}
ExecStart=/usr/bin/java -jar ${agent_jar_path}/agent.jar -url ${jenkins_url} -secret ${jenkins_secret} -name "agent-a" -webSocket -workDir ${jenkins_agent_home_dir}
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd, start the service, and enable it to run on startup
sudo systemctl daemon-reload
sudo systemctl start jenkins-agent
sudo systemctl enable jenkins-agent

# Confirm success
if systemctl is-active --quiet jenkins-agent; then
  echo "Jenkins Agent service has been successfully started and enabled!"
else
  echo "Failed to start Jenkins Agent service. Check the logs using: sudo journalctl -u jenkins-agent"
fi
