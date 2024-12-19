## Jenkins Pipeline Setup

### Creating a Simple Pipeline
1. **Open Jenkins Dashboard**:
    - Go to `http://<your_server_ip>:8080`
    - Log in with your credentials.

2. **Create a New Pipeline**:
    - Click on `New Item`.
    - Enter a name for your pipeline and select `Pipeline`.
    - Click `OK`.

3. **Configure the Pipeline**:
    - In the pipeline configuration page, scroll down to the `Pipeline` section.
    - Select `Pipeline script` and enter the following script:
    ```groovy
    pipeline {
        agent any
        stages {
            stage('Build') {
                steps {
                    echo 'Building...'
                }
            }
            stage('Test') {
                steps {
                    echo 'Testing...'
                }
            }
            stage('Deploy') {
                steps {
                    echo 'Deploying...'
                }
            }
        }
    }
    ```

4. **Save and Run**:
    - Click `Save`.
    - Click `Build Now` to run the pipeline.

### Advanced Pipeline Configuration
- Refer to examples/advanced_pipeline.md for more complex pipeline setups.