#!/bin/bash

if [ -z "$1" ]
  then
    echo "Service account required"
    exit 1
fi
SA=$1

echo "Creating key for terraform to use"
gcloud iam service-accounts keys create key-file \
    --iam-account="$SA"

