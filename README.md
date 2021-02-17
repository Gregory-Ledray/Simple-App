# Simple App
This is a simple application which can be deployed to AWS. It is meant to test the CI/CD pipeline pushing into an already created stack on AWS.

### Files Overview
* main.go contains the simple application we are deploying to AWS.

### Build and Test Locally
* You can build the application locally with "go build"
* You can run the resulting executable file. Navigate to your PORT-environment configured variable or localhost:8080 and view the application.

## Continuous Integration and Deployment
When a new release is tagged in Github the application is deployed to AWS automatically.

### Deploy into a new environment
* To create a new environment, run the following script: TODO

### Destroy the existing environment
* To destroy the environment which was created either with the environment creation script or when it is created via the
deployment, run the destruction script: TODO
