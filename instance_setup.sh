#! /bin/bash
sed 's/PasswordAuthentication no/PasswordAuthentication yes/' -i /etc/ssh/sshd_config
systemctl restart ssh
service sshd restart

useradd admin
echo "admin1234" | passwd --stdin admin

useradd project-name
echo "project-name1234" | passwd --stdin project-name