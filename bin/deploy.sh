#!/bin/bash

set -e

cd infra
. ./vars.sh
cd ../dist

aws s3 sync . s3://$ORIGIN_BUCKET_NAME --delete