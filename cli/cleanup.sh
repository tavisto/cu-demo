#!/usr/bin/env bash

if [ -z "$1" ]
  then
    echo "Instance name is required"
    exit 1
fi
NAME=$1

echo "List out any instances we may already have"
echo "gcloud compute instances list"
gcloud compute instances list

echo "Remove our test instance"
echo "gcloud compute instances delete $NAME"
gcloud compute instances delete "$NAME"
