#!/usr/bin/env bash

if [ -z "$1" ]
  then
    echo "Instance name is required"
    exit 1
fi
NAME=$1

IMAGE='ubuntu-2004-focal-v20220204'

echo "List out any instances we may already have"
echo "gcloud compute instances list"
gcloud compute instances list

echo "Start up an instance using command line flags"
echo gcloud compute --project=cu-demo \
  instances create "${NAME}" \
  --zone=us-east1-b \
  --machine-type=g1-small \
  --subnet=default \
  --network-tier=PREMIUM \
  --maintenance-policy=MIGRATE \
  --service-account=598198349325-compute@developer.gserviceaccount.com \
  --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
  --image="${IMAGE}" \
  --image-project=ubuntu-os-cloud \
  --boot-disk-size=10GB \
  --boot-disk-type=pd-standard \
  --boot-disk-device-name="${NAME}"
gcloud compute --project=cu-demo \
  instances create "${NAME}" \
  --zone=us-east1-b \
  --machine-type=g1-small \
  --subnet=default \
  --network-tier=PREMIUM \
  --maintenance-policy=MIGRATE \
  --service-account=598198349325-compute@developer.gserviceaccount.com \
  --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
  --image="${IMAGE}" \
  --image-project=ubuntu-os-cloud \
  --boot-disk-size=10GB \
  --boot-disk-type=pd-standard \
  --boot-disk-device-name="${NAME}"

echo "List out our instances"
echo "gcloud compute instances list"
gcloud compute instances list

echo "Waiting for cloud instance to finish starting up"
sleep 20
echo " ... probably not ready yet..."
sleep 20
echo " ... almost there.."
sleep 10

echo "ssh into our new instance"
echo "gcloud compute ssh $NAME"
gcloud compute ssh "$NAME"
