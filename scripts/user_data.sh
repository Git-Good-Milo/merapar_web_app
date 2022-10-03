#!/bin/bash -xe
# Install Apache webserver
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Hello World from user data" > /var/www/html/index.html
# Install gunicorn
pip3 install gunicorn
# Clone and install web app
yum install git -y
cd /var/www
git clone https://github.com/Git-Good-Milo/merapar_web_app.git
# Install and activate venv
cd merapar_web_app
rm -rf venv
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt
python3 