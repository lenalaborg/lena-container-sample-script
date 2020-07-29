#!/bin/bash

docker stop ss01
docker rm ss01
docker run -itd \
           --network lena \
           --name ss01 \
           -e LENA_SESSION_0_ADDRESS=ss01:5180 \
           -e LENA_SESSION_1_ADDRESS=ss02:5180 \
           -e LENA_SECONDARY_SESSION_NO=1 \
           ss-cluster
