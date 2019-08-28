#!/bin/bash

SERVICE="CCMService"
COMMON_JAVA_OPTIONS="-Dreporty.service=$SERVICE -Dconfig.file=/tmp/ccm-service/deployment.conf"

java -jar ${COMMON_JAVA_OPTIONS} /tmp/ccm-service/*.jar >> /home/ec2-user/log.txt 2>&1 < /dev/null &
