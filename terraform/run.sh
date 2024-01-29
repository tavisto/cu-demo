#!/usr/bin/env bash

echo "Setup terraform and get all the modules needed ready to go"
echo "terraform init"
terraform init

echo "Apply the terraform to actually run the code to build everything"
echo "Terraform apply"
terraform apply

echo "Grab the name so we can do something with it."

NAME=$(terraform output -raw instance_name)

echo "Waiting for cloud instance to finish starting up"
sleep 20
echo " ... probably not ready yet..."
sleep 20
echo " ... almost there.."
sleep 10

echo "ssh into our new instance"
echo "gcloud compute ssh $NAME"
gcloud compute ssh "$NAME"
