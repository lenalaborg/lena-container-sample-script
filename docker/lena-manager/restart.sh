#!/bin/bash

docker stop lena-manager
docker rm lena-manager
docker run -itd \
           --network lena \
           -p 7700:7700 \
           -v /root/dockerlec/lena-manager/repository:/usr/local/lena/repository \
           --name lena-manager \
           lena-manager
