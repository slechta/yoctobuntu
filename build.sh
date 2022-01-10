#!/bin/bash
set -eu
TAG=$1
IMGNAME="slechta/yoctobuntu:${TAG}"
docker build --no-cache -t ${IMGNAME} .
docker push ${IMGNAME}
