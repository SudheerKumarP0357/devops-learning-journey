
#### 3.CI-CD/GitHub_Actions/examples/advanced_workflow.md

```md
## Advanced GitHub Actions Workflow Example

### `ci.yml` File
```yaml
name: CI

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Set up JDK 11
      uses: actions/setup-java@v2
      with:
        java-version: '11'
    - name: Build with Gradle
      run: ./gradlew build

  test:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Set up JDK 11
      uses: actions/setup-java@v2
      with:
        java-version: '11'
    - name: Test with Gradle
      run: ./gradlew test

  deploy:
    runs-on: ubuntu-latest
    needs: build

    steps:
    - uses: actions/checkout@v2
    - name: Deploy to Server
      run: scp build/libs/my-app-1.0.0.jar user@server:/path/to/deploy

```

**Explanation**
- jobs: Defines multiple jobs (build, test, deploy).
- needs: Specifies job dependencies (deploy needs build).