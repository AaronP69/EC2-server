# Create a simple EC2 server with instance storage

## Instance creation

- Select ec2 service
- Choose Amazon Linux AMI within community AMI and filter by instance store images
- Choose EC2 Instance Type available with instance store hdd or sdd storage
- Configure Instance Details (Not required)
- Add tag instance (at least instance name)
- Configure Security Group to enable http, https request and ssh connection
- Add key pair to be able to remotly login to the machine (automatic download)
- Launch Instance

## Instance connection via ssh
- Click on View Instance or go back to EC2 dashboard and select the Instance. 
- Click Connect via ssh
- Copy the connection string.
- And paste to terminal to be connected