#!/bin/bash

set -e

cd infra
. ./vars.sh

CF_ID=$(aws cloudformation describe-stacks --stack-name  ${STACK_NAME} --query "Stacks[0].Outputs[?OutputKey=='CloudFrontDistributionId'].OutputValue" --output text)
echo Creating invalidation request for $CF_ID
AWS_MAX_ATTEMPTS=10 aws cloudfront create-invalidation --distribution-id ${CF_ID} --paths '/*'
