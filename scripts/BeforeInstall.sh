#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 129729052534 --region ap-northeast-1)

if [ `docker images | grep dc103_repo_dev | wc -l`  = 1 ]
then
        docker rmi dc103_repo_dev
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/dc103_repo_dev:latest
else
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/dc103_repo_dev:latest
fi
