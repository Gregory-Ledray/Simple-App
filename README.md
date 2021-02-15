# Simple App
This is a simple application which can be deployed to AWS. It is meant to demonstrate my ability to automate the creation and destruction of such an application.

### Files Overview
* Additional documentation for this package can be found in its GoDoc: TODO
* main.go contains the simple application we are deploying to AWS.

### Build and Test Locally
* You can build the application locally with "go build"
* You can run the resulting executable file. Navigate to your PORT-environment configured variable or localhost:8080 and view the application.

### Deploy into a new environment
* To create a new environment, run the following script: TODO
* Deployment should happen automatically when the continuous integration pipeline is triggered. TODO

### Destroy the existing environment
* To destroy the environment which was created either with the environment creation script or when it is created via the
deployment, run the destruction script: TODO
