# /bin/bash

BUILD_VERSION="v23"

gcloud config configurations activate pwc-bat-test
export CLOUDSDK_ACTIVE_CONFIG_NAME=pwc-bat-test
export KUBECONFIG=`pwd`/kube-config-prod

cd ../../HederaWebService
docker build -f ./Dockerfile.01 -t gcr.io/pwc-bat-test/hedera-web-service-01:${BUILD_VERSION} .
docker push "gcr.io/pwc-bat-test/hedera-web-service-01:${BUILD_VERSION}"

docker build -f ./Dockerfile.02 -t gcr.io/pwc-bat-test/hedera-web-service-02:${BUILD_VERSION} .
docker push "gcr.io/pwc-bat-test/hedera-web-service-02:${BUILD_VERSION}"

docker build -f ./Dockerfile.03 -t gcr.io/pwc-bat-test/hedera-web-service-03:${BUILD_VERSION} .
docker push "gcr.io/pwc-bat-test/hedera-web-service-03:${BUILD_VERSION}"

cd ../HederaIntegrationNode

docker build -f ./Dockerfile -t gcr.io/pwc-bat-test/hedera-integration-node:${BUILD_VERSION} .
docker push "gcr.io/pwc-bat-test/hedera-integration-node:${BUILD_VERSION}"

cd ../pwc-bat-docker
kubectl apply -f kubernetes
