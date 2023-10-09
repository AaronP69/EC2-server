# Create custom cloudwatch metrics

## Create a cloudwatch role to attach to ec2 instance

- In IAM dashboard select role
- In role select EC2 as the that service the role will be attached to
- In role search for CloudWatchAgentServerPolicy and select it
- Search for AmazonEC2RoleforSSM and select it
- Create the rolename (cloudwatch-agent) and validate

## Instance creation

- Select ec2 service
- Choose Amazon Linux AMI within community AMI and filter by instance store images
- Choose EC2 Instance Type available with instance store hdd or sdd storage
- Configure Instance Details (Not required)
- Add tag instance (at least instance name)
- Configure Security Group to enable http, https request and ssh connection
- Add key pair to be able to remotly login to the machine (automatic download)
-  💡  Add IAM cloudwatch-agent role 💡 
- Launch Instance

## Add password on instance start
- Go to advanced parameters
- Upload the setup script that is containing password setup
- You can now connect with created user and password

## Instance connection via ssh
- Click on View Instance or go back to EC2 dashboard and select the Instance. 
- Click Connect via ssh
- Copy the connection string.
- And paste to terminal to be connected

## Install cloudwatch agent

- Go to cloudagent documentation and download link: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/install-CloudWatch-Agent-commandline-fleet.html
- Download the Amazon Linux 2 agent: 
```console 
wget https://s3.amazonaws.com/amazoncloudwatch-agent/amazon_linux/amd64/latest/amazon-cloudwatch-agent.rpm
```
- Install cloud agent:
```console 
sudo rpm -U ./amazon-cloudwatch-agent.rpm
```

- Configure Cloudwatch:
```console
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard
```
- Start the agent:
```console
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json -s
```
-  💡  You can stream log file by checking the option and selecting log file that you want to use 💡 