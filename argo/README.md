# Notes

```bash
# To retrieve the admin password for the ArgoCD instance
oc get secret open5g-gitops-cluster -o go-template='{{index .data "admin.password"}}' -n open5g-gitops | echo $(base64 -d )
```
