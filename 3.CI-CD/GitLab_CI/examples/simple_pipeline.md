## Simple GitLab CI Pipeline Example

### `.gitlab-ci.yml` File
```yaml
stages:
  - build
  - test
  - deploy

build:
  stage: build
  script:
    - echo "Building the project..."

test:
  stage: test
  script:
    - echo "Running tests..."

deploy:
  stage: deploy
  script:
    - echo "Deploying the project..."

```

**Explanation**
- stages: Defines the stages of the pipeline (build, test, deploy).
- script: The actual commands to run in each stage.