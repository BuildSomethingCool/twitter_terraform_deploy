#! /bin/bash

terraform destroy -var-file="input.tfvars" <<< yes
