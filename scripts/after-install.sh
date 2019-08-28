#!/bin/bash

if [[ "$DEPLOYMENT_GROUP_NAME" =~ "CCMServiceStaging" ]]
then
    aws s3 cp s3://carbyne-deployment-conf/ccm-service/staging/deployment.conf /tmp/ccm-service/
elif [[ "$DEPLOYMENT_GROUP_NAME" == "CCMServiceQA" ]]
then
   aws s3 cp s3://carbyne-deployment-conf/ccm-service/qa/deployment.conf /tmp/ccm-service/
elif [[ "$DEPLOYMENT_GROUP_NAME" =~ "CCMServiceDevelopment" ]]
then
   aws s3 cp s3://carbyne-deployment-conf/ccm-service/dev/deployment.conf /tmp/ccm-service/
elif [[ "$DEPLOYMENT_GROUP_NAME" =~ "CCMServiceProduction" ]]
then
   aws s3 cp s3://carbyne-deployment-conf-prod/ccm-service/deployment.conf /tmp/ccm-service/
else
   echo "Unknown DEPLOYMENT_GROUP_NAME: $DEPLOYMENT_GROUP_NAME"
   exit 1
fi
