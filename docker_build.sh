#!/bin/bash

dt=`date '+%Y-%m-%d_%H-%M-%S'`
docker build . --rm -t sqlpass.azurecr.io/webapp:$dt
docker tag sqlpass.azurecr.io/webapp:$dt sqlpass.azurecr.io/webapp:latest

docker push sqlpass.azurecr.io/webapp:$dt
docker push sqlpass.azurecr.io/webapp:latest

