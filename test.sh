#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

if [ -f .env ]
then
  set -o allexport
  source .env
  set +o allexport

  aws lambda invoke --function-name $FUNCTION_NAME stdout.txt
  cd ..

  set -o allexport
  source .env.example
  set +o allexport
elif
then
  echo "No .env file found"
fi