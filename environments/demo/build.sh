#!/bin/bash
set -e
VERSION=latest
REPO="qwan/distributed-ensemble-demo"

rsync -av ../../exercises/java/ exercises/
docker build . -t $REPO:$VERSION
