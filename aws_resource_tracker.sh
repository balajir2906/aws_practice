#!/bin/bash
###################################
#Author: Balaji R
#Script: AWS_RESOURCE_TRACKER
#Date: 25/12/2025
#Info: Used to track the usage of aws resources
#Version: v1
###################################
#Services - EC2,LAMBDA,S3,IAM.
#
#
set -x

### monitoring ###

echo "print the ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resource_tracker.txt

echo "print the lambda functions"
aws lambda list-functions >> resource_tracker.txt

echo "print the s3 buckets"
aws s3 ls >> resource_tracker.txt

echo "print the IAM users"
aws iam list-users >> resource_tracker.txt


