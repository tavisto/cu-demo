#!/usr/bin/env bash

SA=$(gcloud iam service-accounts list --format='value(email)')

echo "Creating key for terraform/tofu to use"
gcloud iam service-accounts keys create key-file \
    --iam-account="$SA"

ecoh "Make sure terraform or tofu is installed"
if ! command -v terraform &> /dev/null && ! command -v tofu &> /dev/null
then
    echo "terraform or tofu could not be found, please install one of them to proceed."
    exit
fi
