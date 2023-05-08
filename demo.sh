#!/usr/bin/env bash

export DOCKER_BUILDKIT=0

cd desktop-base && ./build.sh
cd ../java-intellij && ./build.sh
cd ../environments/demo && ./build.sh
docker run -p 8080:8080 qwan/distributed-ensemble-demo
