#!/bin/bash
oc get secret open5g-gitops-cluster -o go-template='{{index .data "admin.password"}}' -n open5g-gitops | echo $(base64 -d )
