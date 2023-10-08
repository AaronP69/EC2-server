# Give a EC2 access with IAM

## Create IAM role

- Go to IAM console
- Select user and click on create user
- Add a username and click on create
- The on "Set permission" panel select Attach existing policies to add predifined policies
- In the search bar type AmazonS3FullAccess and select the corresponding item and click next
- Then on step 3 click on create user
- On IAM dashboard click freshly created user
- Go to security credentials and create an access key (Download csv if needed)

## Usage of IAM users

- Connect via ssh to a created instance (Amazon Linux AMI)
- Configure your aws cli user by entering needed informations:
```console
aws configure
```
- Now create a s3 (wich will be allowed by the AmazonS3FullAccess) bucket through the following command:
```console
aws s3 mb s3://XXXXXX-XXXX
```
- To check if the bucket is well created you go to dashboard or list the buckets with the following command:
```console
aws s3 ls
```

⚠️ This way to configure aws user will save a file of your credentials wich are apparing in clear to avoid this follow the next
step   👇️ 

## Usage of Role

- On IAM Dashboard click on roles
- Click on create role
- Select service and search for EC2 select and click on next
- On permission select AmazonS3FullAccess and AmazonEC2FullAccess
- Choose a role name for this one (ec2-s3-full-access for this one)
- Then attach the role to the instance
- Go to ec2 and select a ec2 instance
- Go to action > Security  and click on Modify IAM role
- Select the role and update role
- You are now able to use ``` aws s3 ``` command without configure aws