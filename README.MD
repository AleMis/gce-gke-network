### `Google Cloud - Google Kubernetes Engine (GKE) - LoadBalancing and Ingress Controller examples`

This repositiorium containes simple examples how to run kubernetes cluster in GKE with configuration how to set up simple Services, Load Balancer and Http Load Balancer for our applications.

#### `package: gce-gke`

Package gce-gke contains scripts to set up simple deployment of hello-app with exposition of our application using Service with type Load Balancer.

Step 1. Run command: *bash build.sh*
Step 2. Run command: *kubectl apply -f gce-gke-deployment.yaml*
Step 3. Run command: *kubectl apply -f gce-gke-service.yaml*

You can change settings in *settings.sh* file. 

#### `package: gce-gke-ingress`

Package gce-gke-ingress contains scripts to set up simple deployment using hashicorp/http-echo image and deploy Nginx Ingress Controller. In this example two deployments are created with two services. Nginx Ingress Controller redirects communication via two paths. 

Step 1. Run command: *bash cloud.sh*
Step 2. Run command: *kubectl apply -f apply.sh*

You can change settings in *settings-cloud.sh* file. 

#### `package: gce-gke-http-lb`

Package gce-gke-http-lb contains scripts to set up simple deployment using hashicorp/http-echo image and deploy Http Load Balancer. In this example two deployments are created with two services. Http Load Balancer redirects communication via two paths. 

Step 1. Run command: *bash cloud.sh*
Step 2. Run command: *kubectl apply -f apply.sh*

You can change settings in *settings-cloud.sh* file. 

After all you can delete cluster using *delete.sh* file. 

**Prerequisites:**
* gcloud CLI
* kubectl CLI