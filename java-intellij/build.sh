#!/bin/bash
set -e
VERSION=latest
REPO="qwan/java-intellij"

docker build . -t $REPO:$VERSION
