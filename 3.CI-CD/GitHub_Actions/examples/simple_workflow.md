## Simple GitHub Actions Workflow Example

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
```

**Explanation**
 - on: Specifies the events that trigger the workflow (push, pull_request).
 - jobs: Defines the jobs to run in the workflow.
 - steps: The actual steps to run in each job.