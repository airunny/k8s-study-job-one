#!/bin/sh
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app
docker build -t smileleo/auth-webhook:latest .
docker push smileleo/auth-webhook:latest