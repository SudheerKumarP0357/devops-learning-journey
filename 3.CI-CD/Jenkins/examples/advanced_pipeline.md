
#### 3.CI-CD/Jenkins/examples/advanced_pipeline.md

```md
## Advanced Jenkins Pipeline Example

### Pipeline Script
```groovy
pipeline {
    agent any
    environment {
        APP_NAME = 'my-app'
        APP_VERSION = '1.0.0'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/my-repo/my-app.git'
            }
        }
        stage('Build') {
            steps {
                sh './gradlew build'
            }
        }
        stage('Test') {
            steps {
                sh './gradlew test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'scp build/libs/${APP_NAME}-${APP_VERSION}.jar user@server:/path/to/deploy'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'build/libs/*.jar', allowEmptyArchive: true
            junit 'build/test-results/test/*.xml'
        }
    }
}

```

**Explanation**
- environment: Defines environment variables for the pipeline.
- stages: Includes additional stages like Checkout.
- post: Defines actions to take after the pipeline runs, such as archiving artifacts and publishing test results.