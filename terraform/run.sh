#!/usr/bin/env bash

echo "Setup tofu and get all the modules needed ready to go"
echo "tofu init"
tofu init

echo "Validate the tofu code to make sure there are no errors"
echo "tofu validate"
tofu validate

echo "Apply the tofu to actually run the code to build everything"
echo "tofu apply"
tofu apply

echo "Grab the name so we can do something with it."

NAME=$(tofu output -raw instance_name)

echo "Waiting for cloud instance to finish starting up"
sleep 20
echo " ... probably not ready yet..."
sleep 20
echo " ... almost there.."
sleep 10

echo "ssh into our new instance"
echo "gcloud compute ssh $NAME"
gcloud compute ssh "$NAME"
