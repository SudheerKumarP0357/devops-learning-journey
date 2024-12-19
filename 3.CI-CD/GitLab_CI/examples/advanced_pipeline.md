
#### 3.CI-CD/GitLab_CI/examples/advanced_pipeline.md

```md
## Advanced GitLab CI Pipeline Example

### `.gitlab-ci.yml` File
```yaml
stages:
  - build
  - test
  - deploy

variables:
  APP_NAME: my-app
  APP_VERSION: 1.0.0

build:
  stage: build
  script:
    - ./gradlew build

test:
  stage: test
  script:
    - ./gradlew test

deploy:
  stage: deploy
  script:
    - scp build/libs/${APP_NAME}-${APP_VERSION}.jar user@server:/path/to/deploy

artifacts:
  paths:
    - build/libs/*.jar
  reports:
    junit: build/test-results/test/*.xml
```

**Explanation**
- variables: Defines environment variables for the pipeline.
- artifacts: Specifies files to be saved after the job completes
- reports: Specifies test reports to be collected.