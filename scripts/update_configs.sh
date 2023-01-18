gcloud config configurations activate bat-pwc-demo
export CLOUDSDK_ACTIVE_CONFIG_NAME=bat-pwc-demo
export KUBECONFIG=`pwd`/kube-config-prod

kubectl apply -f kubernetes

