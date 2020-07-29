#!/bin/bash

docker stop $1
docker rm $1
docker run -itd \
           --network lena \
           --name $1 \
           -p $2:7180 \
           web-cluster
