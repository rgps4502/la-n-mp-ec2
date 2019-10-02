#!/bin/bash
if [ `docker ps | grep devops | wc -l`  = 1 ]
then
        docker stop devops
        docker rm devops 
fi
