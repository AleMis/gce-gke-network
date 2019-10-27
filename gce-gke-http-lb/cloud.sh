set -e

source settings-cloud.sh

gcloud container clusters create $CLUSTER_NAME --project $PROJECT_NAME --zone $ZONE --cluster-version 1.14.6-gke.13 --num-nodes 1

gcloud container clusters get-credentials $CLUSTER_NAME --zone $ZONE