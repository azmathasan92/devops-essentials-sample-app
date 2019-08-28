#!/bin/bash
#normalize with dos2unix
shopt -s expand_aliases

SERVICE="$(. $(dirname $0)/aws/get-service-name.sh)"

if [ "$SERVICE" == "CCMService" ]
then
   alias VALIDATION="netstat -tulpn | grep \":::80 \""
else
   echo "Unknown SERVICE: $SERVICE"
   exit 1
fi

for i in {0..300}
do
        VALIDATION
        if [ $? -eq 0 ]
        then
                exit 0
        else
                sleep 1
        fi
done
exit 1
