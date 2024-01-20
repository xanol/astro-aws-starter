#!/bin/sh

REGION=us-east-2
DOMAIN_NAME="somedomain.com"
STACK_NAME="somedomain-infra-stack"
ORIGIN_BUCKET_NAME="www.somedomain.com"
TEMPLATE="./resources.yml"
PARAMETERS_FILE="./params.json"
PARAMS=($(jq -r '.Parameters[] | [.ParameterKey, .ParameterValue] | "\(.[0])=\(.[1])"' ${PARAMETERS_FILE}))