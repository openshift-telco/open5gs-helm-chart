# Notes

**WARNING** The ArgoCD instance `open5g-gitops` has `cluster-admin` privileges. THIS IS ONLY FOR LAB/DEMO ENVIRONMENTS.

- Create the ArgoCD `open5g-gitops` instance from this repo:
```bash
oc apply -k argo/
```
- Wait few minutes. It will take few minutes before the Argo Apps start the remediation cycle.
- To access the UI either login with OpenShift credentials or execute the following command to obtain the password generated for the `admin` user.

```bash
# To retrieve the admin password for the ArgoCD instance
oc get secret open5g-gitops-cluster -o go-template='{{index .data "admin.password"}}' -n open5g-gitops | echo $(base64 -d )
```

- The resulting deployment should look like this:
```bash
$ oc get pods
NAME                                                     READY   STATUS    RESTARTS   AGE
open5g-gitops-application-controller-0                   1/1     Running   0          7m58s
open5g-gitops-applicationset-controller-8bf6dd57-djc98   1/1     Running   0          7m57s
open5g-gitops-dex-server-666cbcc8dd-mmx5t                1/1     Running   0          7m56s
open5g-gitops-redis-554f6d4594-r4ssm                     1/1     Running   0          7m58s
open5g-gitops-repo-server-65c9bf8c84-css7g               1/1     Running   0          7m58s
open5g-gitops-server-7d8f58d57f-24t5n                    1/1     Running   0          7m58s

$ oc get pods -n open5gran
NAME                     READY   STATUS    RESTARTS   AGE
5gran-7774c6958c-rhrgr   3/3     Running   0          58s
```
