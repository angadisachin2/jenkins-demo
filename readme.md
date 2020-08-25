# Sample App

This is a simple application to demonstrate microservices running under a multi-account CICD Pipeline and then to perform Canary based deployments using AWS App Mesh.


## Setup of Cross Account CI/CD AWS CodePipeline

For detailed steps, refer to the Word document which is provided by maintainer / owner of this Artifact.

### Prerequisites

To deploy this Sample App, you will need a functional CodePipeline,
EKS cluster, and service mesh.

Detailed steps and CloudFormation stack templates are provided under the Implementation document to create the necessary resources.

Before pushing this code to CodeCommit, ensure that you satisfy below requirements
 1. As part of the Multi-account statergy, it is recommended to have CodeCommit under the Developer (Developement) account
 2. To deploy this code, user needs to perform commit with master branch which automatically triggers the CodePipeline




### High level steps

```sh
# Make necessary changes to application code
#Then add the new changes
git add .

# Commit to include recent changeset
git commit -a -m "Comment"

#Push the code to CodeCommit, here "sample-app" is the CodeCommit repository name.
git push sample-app master

```

Now Login into the account where CodePipeline is been setup, usually it should be in SharedServices (Tools) Account. Ensure that CodePipeline is been trigerred and is "in-progress" state.
