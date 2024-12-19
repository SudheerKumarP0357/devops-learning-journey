## GitHub Actions Workflow Setup

### Creating a Simple Workflow
1. **Create a Workflow File**:
    - In the root of your repository, create a directory named `.github/workflows`.
    - Inside this directory, create a file named `ci.yml`.
    - Add the following content:
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

2. **Commit and Push**:
    - Commit the `ci.yml` file to your repository.
    - Push the changes to GitHub.

3. **View Workflow**:
    - Go to your GitHub repository.
    - Click on `Actions` to view the workflow status.

### Advanced Workflow Configuration
- Refer to examples/advanced_workflow.md for more complex workflow setups.