#!/bin/bash

usage() {
  echo "usage $0 <language>"
  exit 1
}

# bash strict mode, plus print each line as it executes
set -x
set -uo pipefail
trap 's=$?; echo "$0: Error on line "$LINENO": $BASH_COMMAND"; exit $s' ERR
IFS=$'\n\t'

export language=$1
[[ "$language" == "" ]] && usage
export CLIDIR=$(dirname "$0")
export MY_UID=$(id -u)
export MY_GID=$(id -g)
export CURDIR=$(pwd)

docker-compose -f ${CLIDIR}/exercise-container.yml run exercise_desktop /bin/bash 


