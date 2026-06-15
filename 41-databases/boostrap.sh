#!/bin/bash

#!/bin/bash

component=$1
environment=$2
dnf install ansible -y

cd /home/ec2-user
git clone https://github.com/Shirisha-Kodari/ansible-roboshop-roles-tf.git

cd ansible-roboshop-roles-tf
git pull
ansible-playbook -e component=$component -e env=$environment roboshop.yaml
# component=$1
# dnf install ansible -y
# ansible-pull -U https://github.com/Shirisha-Kodari/ansible-roboshop-roles-tf.git -e component=$1 -e env=$2 main.yaml