#!/bin/bash

SA=$(gcloud iam service-accounts list --format='value(email)')

echo "Creating key for terraform to use"
gcloud iam service-accounts keys create key-file \
    --iam-account="$SA"

