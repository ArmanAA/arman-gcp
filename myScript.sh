#!/bin/bash
# echo --------- Creating new project.....
# gcloud projects create brand-new-project-1-arman

echo --------- Selecting correct project
gcloud config set project brand-new-project-arman

echo --------- Creating new VM instance 
gcloud compute instances create --zone=us-central1-b --machine-type=f1-micro mybrandnewvm

echo --------- Adding metadata... start up script
gcloud compute add-metadata mybrandnewvm --metadata-from-file=compute-labs/worker-startup-script.sh

echo --------- Creating new bucket
 gsutil mb  -p brand-new-project-arman on gs://lab-logs-bucket

