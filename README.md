# Terraform demo

This repo is a demo of the basics of terraform. Will go through:
- Deploying an s3 bucket locally
- Deploying an s3 bucket via github actions

## Pre-requisites
- Install terraform
- Install AWS CLI
- IAM User access key / secret (create a temporary IAM User and delete when finished)

## Deploying resources locally
- Configure AWS credentials. Run:
    - Mac: `export AWS_ACCESS_KEY_ID=` and `export AWS_SECRET_ACCESS_KEY=`
    - Windows: `$env:AWS_ACCESS_KEY_ID=` and `$env:AWS_SECRET_ACCESS_KEY=`
- config.tf contains the necessary providers blocks. 
- main.tf is where you can create your resources. Default is to deploy an s3 bucket
- Run `terraform init`, `terraform validate`, `terraform plan`, `terraform apply`
- Show resources created in the console. Can explain and show state ``terraform show`
- Modify resource to show changes in plan (can change in console then run plan or change in tf code)
- Run `terraform destroy`
    - Bonus learning - Can initially have the IAM user not have permission to delete s3 buckets so that the destroy errors. Then show how updating permissions allows terraform destroy.

## Deploying resources via pipeline
- Pre-requisites:
    - Update the Github Action repository secrets for SANDBOX_AWS_ACCESS_KEY_ID and SANDBOX_AWS_SECRET_ACCESS_KEY
    - Create an s3 bucket for yuor statefile
    - Update line 3 in backend.tf for the bucket you have just created
- Run terraform pipeline. The pipeline will run a plan first then wait for an approval for apply
- When finished can run terraform destroy job