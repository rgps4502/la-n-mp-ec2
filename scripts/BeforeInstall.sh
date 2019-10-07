#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 204065533127 --region ap-northeast-1)

if [ `docker images | grep dc103_project03_dev01 | wc -l`  = 1 ]
then
        docker rmi dc103_project03_dev01
        docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/dc103_project03_dev01:latest
else
        docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/dc103_project03_dev01:latest
fi
