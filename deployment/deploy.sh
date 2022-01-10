#!/usr/bin/env bash

VERSION=$SERVICE-$BUILD_NUMBER
IMAGE="$SERVICE:latest"
NAMESPACE="default"

sed "s#{{service}}#$SERVICE#g; s#{{image}}#$IMAGE#g; s#{{namespace}}#$NAMESPACE#g; s#{{version}}#$VERSION#g;" /deployment/hello-app.yaml | kubectl apply -f ./deployment/
