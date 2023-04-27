#!/bin/bash
set -e
VERSION=latest
REPO="qwan/desktop"

command=$1
case $command in
  push)
    docker push $REPO:$VERSION
    ;;
  *)
    docker build . -t $REPO:$VERSION
    ;;
esac
