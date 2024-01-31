#!/bin/bash
#install amazon ansible-ec2 plugin

ansible-galaxy collection install amazon.aws
# # install ansible with python3
sudo yum update -y
sudo amazon-linux-extras install python3.8 -y
sudo pip3.8 install ansible

# #install boto3 and botocore
sudo pip3.8 install boto3 botocore awscli
#change terminal color
echo "PS1='\e[1;32m\u@\h \w$ \e[m'" >> /home/ec2-user/.bash_profile

sudo yum install git -y
mkdir -p /home/ec2-user/ansible-dev
git clone https://github.com/Theoalban/week17-ansible-code.git

cp -r week17-ansible-code/* /home/ec2-user/ansible-dev
sudo chown -R ec2-user:ec2-user /home/ec2-user
rm -rf week17-ansible-code

exit 0
