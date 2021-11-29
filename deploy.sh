#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

if [ -f .env ]
then
  set -o allexport
  source .env
  set +o allexport

  cd lambda
  zip ../lambda.zip -x .gitignore -r .
  aws lambda update-function-code --function-name $FUNCTION_NAME --zip-file fileb://../lambda.zip
  cd ..

  set -o allexport
  source .env.example
  set +o allexport
else
  echo "No .env file found"
fi
