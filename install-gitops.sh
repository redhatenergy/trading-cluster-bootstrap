#!/bin/bash
cd "$(dirname "$0")"
oc apply -k gitops/overlays/default
while [[ $( \
kubectl get pods -l 'app.kubernetes.io/name'='openshift-gitops-server' -n openshift-gitops \
-o 'jsonpath={..status.conditions[?(@.type=="Ready")].status}') != "True" \
]]; 
do echo "waiting for openshift-gitops-server for 10 seconds..." && sleep 10; 
done;
echo "openshift-gitops-server -n openshift-gitops ready"