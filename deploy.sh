#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

if [ -f .env ]
then
  set -o allexport
  source .env
  set +o allexport
fi

cd lambda
zip ../lambda.zip -x .gitignore -r .
aws --profile $PROFILE_NAME --region $REGION lambda update-function-code --function-name $FUNCTION_NAME --zip-file fileb://../lambda.zip
cd ..
