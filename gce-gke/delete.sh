set -e

source settings.sh

gcloud container clusters delete $CLUSTER_NAME --zone $ZONE