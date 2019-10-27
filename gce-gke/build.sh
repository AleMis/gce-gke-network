set -e

source settings.sh

gcloud container clusters create $CLUSTER_NAME --project $PROJECT_NAME --zone $ZONE --cluster-version 1.14.6-gke.13

gcloud container clusters get-credentials $CLUSTER_NAME --zone $ZONE

kubectl apply -f gce-gke-deployment.yaml

kubectl apply -f gce-gke-service.yaml

kubectl get service deployment-gke --output yaml
