#! /bin/bash

terraform init

terraform apply -var-file="input.tfvars" <<< yes
