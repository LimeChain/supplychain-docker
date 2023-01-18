# /bin/bash

BUILD_VERSION="v25"

gcloud config configurations activate bat-pwc-demo
export CLOUDSDK_ACTIVE_CONFIG_NAME=bat-pwc-demo
export KUBECONFIG=`pwd`/kube-config-prod

cd ../HederaWebService
docker build -f ./Dockerfile.01 -t gcr.io/bat-pwc-demo/hedera-web-service-01:${BUILD_VERSION} .
docker push "gcr.io/bat-pwc-demo/hedera-web-service-01:${BUILD_VERSION}"

docker build -f ./Dockerfile.02 -t gcr.io/bat-pwc-demo/hedera-web-service-02:${BUILD_VERSION} .
docker push "gcr.io/bat-pwc-demo/hedera-web-service-02:${BUILD_VERSION}"

docker build -f ./Dockerfile.03 -t gcr.io/bat-pwc-demo/hedera-web-service-03:${BUILD_VERSION} .
docker push "gcr.io/bat-pwc-demo/hedera-web-service-03:${BUILD_VERSION}"

cd ../HederaIntegrationNode

docker build -f ./Dockerfile.01 -t gcr.io/bat-pwc-demo/hedera-integration-node-01:${BUILD_VERSION} .
docker push "gcr.io/bat-pwc-demo/hedera-integration-node-01:${BUILD_VERSION}"

docker build -f ./Dockerfile.02 -t gcr.io/bat-pwc-demo/hedera-integration-node-02:${BUILD_VERSION} .
docker push "gcr.io/bat-pwc-demo/hedera-integration-node-02:${BUILD_VERSION}"

cd ../pwc-bat-docker
kubectl apply -f kubernetes