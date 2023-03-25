#!/bin/bash

#var
BUCKET="demo-training-web-devops-2"
DIR="launch"

echo "======list objetos S3"

aws s3 ls s3://$BUCKET

echo "======Deploy to S3======="

aws s3 sync $DIR s3://$BUCKET

#aws s3 cp $DIR/index.html s3://$BUCKET/index.html 

echo "======FINISH======="


