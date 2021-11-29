console.log('Loading function');

exports.handler = async (event, context) => {
  const message = event.Records[0].Sns.Message;
  console.log('Received event:', JSON.stringify(event, null, 2));
  console.log('From SNS:', message);

  const fs = require('fs');
  const { NodeSSH } = require('node-ssh');

  const ssh = new NodeSSH();

  const privateKey = process.env.pemfilename;
  const username = process.env.user;
  const host = process.env.host;

  const res = await ssh
    .connect({
      host,
      username,
      privateKey,
    })
    .then(function () {
      ssh.execCommand('exit').then(function (result) {
        console.log(result);
        return result;
      });
    });

  const response = {
    statusCode: 200,
    body: res,
  };

  ssh.dispose();

  return response;
};
