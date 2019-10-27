set -e

source settings-cloud.sh

gcloud container clusters delete $CLUSTER_NAME --zone $ZONE