set -e

source settings-cloud.sh

gcloud container clusters create $CLUSTER_NAME --project $PROJECT_NAME --zone $ZONE --cluster-version 1.14.6-gke.13 --num-nodes 1

gcloud container clusters get-credentials $CLUSTER_NAME --zone $ZONE

#If you're using GKE you need to initialize your user as a cluster-admin with the following command:
kubectl create clusterrolebinding cluster-admin-binding \
 --clusterrole cluster-admin \
 --user $(gcloud config get-value account)

# install ngnix ingress controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud-generic.yaml

# verify installation 
kubectl get pods --all-namespaces -l app.kubernetes.io/name=ingress-nginx --watch