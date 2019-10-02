#!/bin/bash
if [ `curl -s -I http://localhost:80 | grep HTTP | awk {'print $2'}`=200 ]
then
  exit 0
else
  exit 1
fi 

