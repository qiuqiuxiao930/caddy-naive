#!/bin/bash
sudo -i
cd /home
sudo apt update
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
docker pull qiuqiuxiao930/docker-test:v1
docker run -p 443:443 -p 80:80 -itd --name ubuntu-test qiuqiuxiao930/docker-test:v1
docker exec -it ubuntu-test /bin/bash
cd
python3 naive.py
