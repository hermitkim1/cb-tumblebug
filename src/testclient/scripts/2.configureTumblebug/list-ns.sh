#!/bin/bash

#function list_ns() {


    TestSetFile=${4:-../testSet.env}
    
    FILE=$TestSetFile
    if [ ! -f "$FILE" ]; then
        echo "$FILE does not exist."
        exit
    fi
	source $TestSetFile
    source ../conf.env
    AUTH="Authorization: Basic $(echo -n $ApiUsername:$ApiPassword | base64)"

    echo "####################################################################"
    echo "## 0. Namespace: List"
    echo "####################################################################"

    INDEX=${1}

    curl -H "${AUTH}" -sX GET http://$TumblebugServer/tumblebug/ns | jq ''
    echo ""
#}

#list_ns