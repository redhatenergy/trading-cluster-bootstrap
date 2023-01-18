brew update && brew install azure-cli

Created RHPDS Azure Blank Open Environment

Login to az login using email instructions

https://learn.microsoft.com/en-us/azure/openshift/tutorial-create-cluster

Get Kubeadmin credentials
```
export CLUSTER=<CLUSTERNAME>
az aro list-credentials --name $CLUSTER --resource-group $RESOURCEGROUP
az aro show --name $CLUSTER --resource-group $RESOURCEGROUP --query "consoleProfile.url" -o tsv
```

# Installing Operators from OperatorHub using the CLI

https://access.redhat.com/documentation/en-us/openshift_container_platform/4.10/html/operators/administrator-tasks#olm-installing-operator-from-operatorhub-using-cli_olm-adding-operators-to-a-cluster

oc get packagemanifests -n openshift-marketplace | grep <operator_name>
oc describe packagemanifests -n openshift-marketplace <operator_name>
