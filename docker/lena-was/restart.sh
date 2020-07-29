#!/bin/bash

docker stop $1
docker rm $1
docker run -itd \
           --network lena \
           --net-alias was-cluster \
           --name $1 \
           was-cluster
