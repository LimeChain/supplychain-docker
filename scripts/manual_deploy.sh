# /bin/bash

BUILD_VERSION="v13"

gcloud config configurations activate pwc-bat-test
export CLOUDSDK_ACTIVE_CONFIG_NAME=pwc-bat-test
export KUBECONFIG=`pwd`/kube-config-prod

cd ../../HederaWebService
docker build -f ./Dockerfile -t gcr.io/pwc-bat-test/hedera-web-service:${BUILD_VERSION} .
docker push "gcr.io/pwc-bat-test/hedera-web-service:${BUILD_VERSION}"

cd ../pwc-bat-docker
kubectl apply -f kubernetes
