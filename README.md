# SNS to SSH Lambda function

## Dependencies

node-ssh 12.0.2 https://npmjs.com/package/node-ssh

## Requirements

- AWS CLI installed to deploy to Lambda
- Lambda function name, profile able to execute it and region
- SSH key, username and hostname of server to SSH into

## Usage

1. Create Lambda environment variables for `pemfilename`, `user`, and `host`
1. Add the pem key to the lambda folder with the filename from `pemfilename`
1. Run `chmod 444` on the pem key so it can be zipped
1. Run `yarn` in the lambda folder to install simple-ssh dependency
1. Copy the `.env.example` file to `.env` and set the variables
1. Run the `deploy.sh` script
1. ???
1. Profit
