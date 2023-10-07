## Create a simple EC2 server

- Select ec2 service
- Choose Amazon Linux AMI
- Choose EC2 Instance Type of t2.micro
- Configure Instance Details (Not required)
- Add storage if needed
- Add tag instance (at least instance name)
- Configure Security Group to enable http request on port 80
- Add key pair to be able to remotly login to the machine (automatic download)
- Launch Instance

- Click on View Instance or go back to EC2 dashboard and select the Instance. 
- Click Connect
- Copy the connection string.


If your're on Windows, 
- Download the ssh client for windows https://git-scm.com/downloads 
- Then you can open the git bash terminal to use ssh tool for logging in to your EC2


If you're on Linux/Mac ssh client is already there

- Navigate to the folder with the key pair. Most of the time it's on the downloads folder. 
- If on Linux , use this command to secure your key pair
```console
chmod 400 your-key-name.pem
```
- Paste the connection string in the command line and type yes when prompted. 


You should now be logged into the EC2 linux instance!
