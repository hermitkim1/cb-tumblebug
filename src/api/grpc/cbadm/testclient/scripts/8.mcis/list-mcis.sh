#!/bin/bash

#function list_mcis() {


    TestSetFile=${4:-../testSet.env}
    if [ ! -f "$TestSetFile" ]; then
        echo "$TestSetFile does not exist."
        exit
    fi
	source $TestSetFile
    source ../conf.env
    
    echo "####################################################################"
    echo "## 8. MCIS: List"
    echo "####################################################################"


    $CBTUMBLEBUG_ROOT/src/api/grpc/cbadm/cbadm mcis list --config $CBTUMBLEBUG_ROOT/src/api/grpc/cbadm/grpc_conf.yaml -o json --ns $NSID | jq ''
#}

#list_mcis