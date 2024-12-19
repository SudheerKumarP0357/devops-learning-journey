## Jenkins Installation

### Prerequisites
- Java Development Kit (JDK) installed
- A server or VM to host Jenkins

### Steps
1. **Install Java**:
    ```sh
    sudo apt update
    sudo apt install openjdk-11-jdk -y
    ```

2. **Add Jenkins Repository**:
    ```sh
    wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
    sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    sudo apt update
    ```

3. **Install Jenkins**:
    ```sh
    sudo apt install jenkins -y
    sudo systemctl start jenkins
    sudo systemctl enable jenkins
    ```

4. **Access Jenkins**:
    - Open a web browser and go to `http://<your_server_ip>:8080`
    - Follow the on-screen instructions to complete the setup.