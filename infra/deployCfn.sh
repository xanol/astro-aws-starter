#!/bin/bash
set -e

. ./vars.sh

aws cloudformation deploy \
    --region ${REGION} \
    --template-file "${TEMPLATE}" \
    --stack-name "${STACK_NAME}" \
    --no-fail-on-empty-changeset \
    --parameter-overrides ${PARAMS[@]}
