## Simple Jenkins Pipeline Example

### Pipeline Script
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

**Explanation**
- agent any: Runs the pipeline on any available agent.
- stages: Defines the stages of the pipeline (Build, Test, Deploy).
- steps: The actual commands to run in each stage.