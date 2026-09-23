#!/bin/bash

##################
# Author: Femi
# Date: 21-Sept
#
# Version: v1
#
# This script will report the AWS resource usage
##################
set -x
set -e

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM
#
# list s3 buckets
aws s3 ls > resourceTracker

# list EC2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resourceTracker

# list Lambda 
aws lambda list-functions > resourceTracker

#list IAM users
aws iam list-users > resourceTracker

