# SNS to SSH Lambda function

## Lambda Node Dependencies

| Package  | Version | URL                                |
| -------- | ------- | ---------------------------------- |
| node-ssh | 12.0.2  | https://npmjs.com/package/node-ssh |

## System Dependencies

| Package | Version | URL                             |
| ------- | ------- | ------------------------------- |
| AWS CLI | 2.4.2   | https://aws.amazon.com/cli/     |
| Nodejs  | 14.x    | https://nodejs.org/en/          |
| Yarn    | 1.22.15 | https://classic.yarnpkg.com/en/ |

## Software Requirements

- Lambda function name, profile able to execute it and region
- SSH key, username and hostname of server to SSH into
- MacOS or linux - Windows will at least need different procedures

## AWS Setup

1. Create a Lambda function connected to the desired SNS topic
1. Add environment variables for `pemfilename`, `user`, and `host`

## Setup

1. If `nvm` installed and `.nvmrc` integration not set up, run `nvm use` to get Node version
1. Add the pem key to the lambda folder with the filename from `pemfilename`
1. Run `chmod 444` on the pem key so it can be zipped
1. Run `yarn` in the lambda folder to install simple-ssh dependency
1. Copy the `.env.example` file to `.env` and set the variables

## Credential Testing

1. After adding the AWS credentials to the .env file, run `test.sh` to test if the connection is working

## Execution

1. Run the `deploy.sh` script
1. ???
1. Profit
