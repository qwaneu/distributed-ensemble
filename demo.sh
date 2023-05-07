#!/usr/bin/env bash

cd desktop-base && ./build.sh
cd ../java-intellij && ./build.sh
cd ../environments/demo && ./build.sh
docker run -p 8080:8080 qwan/distributed-ensemble-demo
