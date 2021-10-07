# Twitter Streaming Terraform

We have a ML pipeline that will perform NLP on Tweets on a given subject. All the source code is located here - [BuildSomethingCool](https://github.com/BuildSomethingCool)

This is the terraform project for the related infrastructure.

### Deployment Infrastructure
```
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
- s3 buckets for data storage
  - 1 For Raw data
  - 1 for modeled data
  - 1 for analyzed data
- A VPC
  - With a public subnet
- A Secrets Manager Secret
  - For our API Keys
- An SQS queue
  - For app communication and decoupling
- Glue Databases
  - Raw Database
  - Modeled Database
  - Post-analysis Database
- more to come......
