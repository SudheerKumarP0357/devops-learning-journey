## Azure DevOps Pipeline Setup

### Creating a Simple Pipeline
1. **Create a Pipeline**:
    - Go to your Azure DevOps project.
    - Click on `Pipelines` > `Create Pipeline`.
    - Select your repository and choose `Starter pipeline`.

2. **Edit the Pipeline**:
    - Replace the content with the following YAML:
    ```yaml
    trigger:
    - main

    pool:
      vmImage: 'ubuntu-latest'

    steps:
    - script: echo Building the project...
      displayName: 'Build'

    - script: echo Running tests...
      displayName: 'Test'

    - script: echo Deploying the project...
      displayName: 'Deploy'
    ```

3. **Save and Run**:
    - Click `Save` and `Run`.
    - Monitor the pipeline execution.

### Advanced Pipeline Configuration
- Refer to examples/advanced_pipeline.md for more complex pipeline setups.