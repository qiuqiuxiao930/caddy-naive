#!/bin/bash
sudo apt update
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
docker stop ubuntu-test
dcoker rm ubuntu-test
docker pull qiuqiuxiao930/docker-test:v1
docker run -p 443:443 -p 80:80 -itd --name ubuntu-test qiuqiuxiao930/docker-test:v1
docker exec -it ubuntu-test /bin/bash
cd
python3 naive.py
