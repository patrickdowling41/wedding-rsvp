#!/bin/bash
set -x

aws sso login
temp_credentials=$(aws sts get-caller-identity --profile=default --query 'Credentials' --output text)

export AWS_ACCESS_KEY_ID=$(echo $temp_credentials | cut -f 1)
export AWS_SECRET_ACCESS_KEY=$(echo $temp_credentials | cut -f 2)
export AWS_SESSION_TOKEN=$(echo $temp_credentials | cut -f 3)
