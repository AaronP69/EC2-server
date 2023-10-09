# Create a simple EC2 server with password authentication

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
- You can now connect with user and password

## Add password on instance start
- Go to advanced parameters
- Upload the setup script that is containing password setup
- You can now connect with created user and password