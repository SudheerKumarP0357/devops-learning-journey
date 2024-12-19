
#### 3.CI-CD/Azure_DevOps/examples/advanced_pipeline.md

```md
## Advanced Azure DevOps Pipeline Example

### `azure-pipelines.yml` File
```yaml
trigger:
- main

pool:
  vmImage: 'ubuntu-latest'

variables:
  APP_NAME: 'my-app'
  APP_VERSION: '1.0.0'

steps:
- script: ./gradlew build
  displayName: 'Build'

- script: ./gradlew test
  displayName: 'Test'

- script: scp build/libs/${APP_NAME}-${APP_VERSION}.jar user@server:/path/to/deploy
  displayName: 'Deploy'

artifacts:
  paths:
    - build/libs/*.jar
  reports:
    junit: build/test-results/test/*.xml

```

**Explanation**
- variables: Defines environment variables for the pipeline.
- artifacts: Specifies files to be saved after the job completes.
- reports: Specifies test reports to be collected.