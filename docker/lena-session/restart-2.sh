#!/bin/bash

docker stop ss02
docker rm ss02
docker run -itd \
           --network lena \
           --name ss02 \
           -e LENA_SESSION_0_ADDRESS=ss01:5180 \
           -e LENA_SESSION_1_ADDRESS=ss02:5180 \
           -e LENA_SECONDARY_SESSION_NO=0 \
           ss-cluster
