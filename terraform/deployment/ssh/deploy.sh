#!/bin/bash

HOST="34.241.218.137"
USER="ec2-user"
KEY="../../rodorro.pem"

SSH -i $KEY $USER@HOST \
    "sudo yum install docker -y && sudo service docker start && sudo docker run -d - p 80:8888 rodorro/myapp"