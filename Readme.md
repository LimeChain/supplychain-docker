

Development

Create folder for the projects
Clone https://github.com/LimeChain/pwc-bat-docker with name pwc-bat-docker
Clone https://github.com/LimeChain/pwc-bat-node with name HederaIntegrationNode
Clone https://github.com/LimeChain/pwc-bat-frontend with name HederaWebService

Fill env files:

Create 3 env files as ".env.dev.01", ".env.dev.02", ".env.dev.03" in HederaWebService/config based on .env.example:
Change the following based on number of config: 
DATABASE_USER,
DATABASE_NAME,
SITE_ID,
HEDERA_INTEGRATION_NODE_URL, - change only the port last digit based on config number


Execute the Readme.md instruction in HederaIntegrationNode


Deployment 

In script "manual_deploy.sh" increment BUILD_VERSION="v30" to next number and replace with the same number in files 
hedera-integration-node-deployment.yaml, hedera-web-service-01-deployment.yaml, hedera-web-service-02-deployment.yaml, hedera-web-service-03-deployment.yaml
and execute manual_deploy.sh
