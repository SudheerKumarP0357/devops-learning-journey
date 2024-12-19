## GitLab CI Installation

### Prerequisites
- A GitLab account
- A GitLab project

### Steps
1. **Create a GitLab Project**:
    - Log in to GitLab.
    - Click on `New Project`.
    - Enter the project details and click `Create project`.

2. **Enable GitLab CI**:
    - In your project, go to `Settings` > `CI / CD`.
    - Expand the `Runners` section and click `Enable shared runners`.

3. **Create a `.gitlab-ci.yml` File**:
    - In the root of your project, create a file named `.gitlab-ci.yml`.
    - Add the following content:
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

4. **Commit and Push**:
    - Commit the `.gitlab-ci.yml` file to your repository.
    - Push the changes to GitLab.