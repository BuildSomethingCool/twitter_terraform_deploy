# Twitter Streaming Terraform

We have a ML pipeline that will perform NLP on Tweets on a given subject. All the source code is located here - [BuildSomethingCool](https://github.com/BuildSomethingCool)

This is the terraform project for the related infrastructure.

### Deployment Infrastructure
```
# Configure your AWS account
aws configure

# Download dependencies
terraform init

# Validate
terraform validate

# deploy
terraform apply
```

### Infrastructure Deployed
The following resources will be deployed
- ECS Cluster
- ECS Execution Role
- 2 ECS Tasks
  - [Ingest job](https://github.com/BuildSomethingCool/TwitterStreamIngest)
  - [s3 export job](https://github.com/BuildSomethingCool/DynamoDbExport)
- [Step function for pipeline](https://github.com/BuildSomethingCool/StepFunctionDataPipeline)
- 2 s3 buckets
  - 1 For Raw data
  - 1 for result data
- A VPC
  - With a public subnet
- A Secrets Manager Secret
  - For our API Keys
- An SQS queue
  - For app communication and decoupling
- more to come......