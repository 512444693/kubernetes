#!/bin/sh

NAMESPACE=default
if [ $# == 1 ]
then
        NAMESPACE=$1
fi

# mysql
kubectl create -f mysql/mysql-deployment.yaml -n $NAMESPACE

# cdnctlmgr
kubectl create configmap configmap-cdnctlmgr-conf --from-file=cdnctlmgr/conf -n $NAMESPACE
kubectl create configmap configmap-cdnctlmgr-db --from-file=cdnctlmgr/db -n $NAMESPACE
kubectl create -f cdnctlmgr/cdnctlmgr.yaml -n $NAMESPACE

# cdnmaster
kubectl create configmap configmap-cdnmaster-conf --from-file=cdnmaster/conf -n $NAMESPACE
kubectl create configmap configmap-cdnmaster-db --from-file=cdnmaster/db -n $NAMESPACE
kubectl create -f cdnmaster/cdnmaster.yaml -n $NAMESPACE
