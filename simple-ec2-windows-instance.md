# Create a simple windows server

## Instance creation

- Select ec2 service
- Choose Windows base image
- Choose EC2 Instance Type of t2.micro
- Configure Instance Details (Not required)
- Add storage if needed
- Add tag instance (at least instance name)
- Configure Security Group to enable http request on port 80 for windows choose ip range (0.0.0.0/0 for all network)
- Add key pair to be able to remotly login to the machine (automatic download)
- Launch Instance

## Instance connection via RDP
- Click on View Instance or go back to EC2 dashboard and select the Instance. 
- Click Connect via RDP
- Copy upload a secret key file.
- Decrypt the password
- copy the password
- Download RDP connection file
- Launch the rdp connection file
- Login to the Admin account with the copied password