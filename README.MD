# Localstack multiservice setup

This repo should allow you to run a basic AWS S3 and SQS service via Docker and Localstack

## Prereqs

* Docker
* aws-cli
* awslocal (optional)

## Run

1. Run `chmod +x ./init_services/init_Services.sh` from this root.
2. Run `docker-compose up -d` to start the localhost container
3. Examine the container logs for startup info

## Local URLs

The present setup provides the following URLs

s3: http://local-bucket.s3.localhost.localstack.cloud:4566/
sqs: http://localhost:4566/000000000000/test-queue
alt sqs: http://sqs.eu-west-2.queue.localhost.localstack.cloud:4566/000000000000/test-queue

## Example S3 calls from aws-cli

`aws --endpoint-url=http://localhost:4566 s3 ls s3://local-bucket`
`aws --endpoint-url=http://localhost:4566 s3 cp my-file.txt s3://local-bucket/my-file.txt`

[Local usage with aws-cli and awslocal documentation](https://docs.localstack.cloud/user-guide/integrations/aws-cli/)