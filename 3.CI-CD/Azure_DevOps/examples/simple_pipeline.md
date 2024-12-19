## Simple Azure DevOps Pipeline Example

### `azure-pipelines.yml` File
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

**Explanation**
- trigger: Specifies the branch that triggers the pipeline (main).
- pool: Defines the agent pool to use (ubuntu-latest).
- steps: The actual steps to run in the pipeline.