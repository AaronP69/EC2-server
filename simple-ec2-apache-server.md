# Create a simple EC2 server

## Instance creation

- Select ec2 service
- Choose Amazon Linux AMI
- Choose EC2 Instance Type of t2.micro
- Configure Instance Details (Not required)
- Add storage if needed
- Add tag instance (at least instance name)
- Configure Security Group to enable http request on port 80
- Add key pair to be able to remotly login to the machine (automatic download)
- Launch Instance

## Instance connection via ssh
- Click on View Instance or go back to EC2 dashboard and select the Instance. 
- Click Connect via ssh
- Copy the connection string.

## Apache Server instanciation

- Install apache linux on the machine: 
```console
sudo yum -y install httpd
```
- Start apache service
```console
sudo service httpd start
```

- Check that server is well started
```console
sudo systemctl enabled httpd
sudo systemctl status httpd
```

- (Optional) Custom apache default page to check if the server is well running:
```console
echo "Hello world !" > /var/www/html/index.html
sudo chmod 755 /var/www/html/index.html
```

## Image creation:
When you create a series of action in EC2 instance you can create an image of it that you can use later to duplicate the server and avoid all the previous 
steps todo so: 

- Go back to the instances dashboard
- Click on the instance that you want to create an image on
- Click on action, click image and templates and select create image
- Choose image name and description and click on create image 