#!/bin/bash
set -ex

./create_secrets.sh "$@"
kubectl create \
-f ceph-mon-v1-svc.yaml \
-f ceph-mon-v1-ds.yaml \
-f ceph-mon-check-v1-dp.yaml \
-f ceph-rbac.yaml \
--namespace=ceph

#-f ceph-mds-v1-dp.yaml \
#-f ceph-osd-v1-ds.yaml \
