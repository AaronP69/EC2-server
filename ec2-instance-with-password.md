# Create a simple EC2 server

## Instance creation

- Select ec2 service
- Choose Amazon Linux AMI
- Choose EC2 Instance Type of t2.micro
- Configure Instance Details (Not required)
- Add storage if needed
- Add tag instance (at least instance name)
- Configure Security Group to enable http, https request and ssh connection
- Add key pair to be able to remotly login to the machine (automatic download)
- Launch Instance

## Instance connection via ssh
- Click on View Instance or go back to EC2 dashboard and select the Instance. 
- Click Connect via ssh
- Copy the connection string.
- And paste to terminal to be connected

## Add password
- Once your are connected create a password:
```console
sudo passwd ec2-user
```
- Enable the password in /etc/ssh/sshd_config:
```console
PasswordAuthentication yes
```
- Restart ssh service:
```console
sudo service sshd restart
```
