#!/usr/bin/env bash

set -euo pipefail

# enable debug
# set -x

AWS_DEFUALT_REGION=eu-west-2

echo "configuring s3"
echo "==================="

awslocal s3 mb s3://local-bucket --region ${AWS_DEFUALT_REGION}
awslocal s3api put-bucket-policy --bucket local-bucket --policy ./bucket_policy.json

echo "configuring sqs"
echo "==================="

awslocal sqs create-queue --queue-name test-queue --region ${AWS_DEFAULT_REGION} --attributes VisibilityTimeout=30
