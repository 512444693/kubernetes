#!/bin/sh

NAMESPACE=default
if [ $# == 1 ]
then
        NAMESPACE=$1
fi

# mysql
kubectl delete -f mysql/mysql-deployment.yaml -n $NAMESPACE

# cdnctlmgr
kubectl delete configmap configmap-cdnctlmgr-conf -n $NAMESPACE
kubectl delete configmap configmap-cdnctlmgr-db -n $NAMESPACE
kubectl delete -f cdnctlmgr/cdnctlmgr.yaml -n $NAMESPACE

# cdnmaster
kubectl delete configmap configmap-cdnmaster-conf -n $NAMESPACE
kubectl delete configmap configmap-cdnmaster-db -n $NAMESPACE
kubectl delete -f cdnmaster/cdnmaster.yaml -n $NAMESPACE
