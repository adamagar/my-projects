#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt-get install git -y
apt-get install python3 -y
cd /Users/barisemre/Desktop/my-projects/aws/projects/
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
cd /Users/barisemre/Desktop/my-projects/aws/projects/Project-503-Capstone-Project-Blog-Page-App-Django-on-AWS-Environment
pip3 install -r requirements.txt
cd /Users/barisemre/Desktop/my-projects/aws/projects/Project-503-Capstone-Project-Blog-Page-App-Django-on-AWS-Environment/src/
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80