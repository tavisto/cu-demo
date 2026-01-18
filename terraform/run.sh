#!/usr/bin/env bash

echo "Setup tf and get all the modules needed ready to go"
echo "tf init"
tf init

echo "Apply the tf to actually run the code to build everything"
echo "tf apply"
tf apply

echo "Grab the name so we can do something with it."

NAME=$(tf output -raw instance_name)

echo "Waiting for cloud instance to finish starting up"
sleep 20
echo " ... probably not ready yet..."
sleep 20
echo " ... almost there.."
sleep 10

echo "ssh into our new instance"
echo "gcloud compute ssh $NAME"
gcloud compute ssh "$NAME"
