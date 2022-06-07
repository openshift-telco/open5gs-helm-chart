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
