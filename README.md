# Azure container group

Login to Azure:

```shell
az login
```

Plan & apply:

Set the variable `deployment` to a number like `1` or `2` to do a [green-blue](https://en.wikipedia.org/wiki/Blue-green_deployment) deployment.

```shell
# Deploy version "1".
terraform plan
terraform apply
# Deploy version "2".
terraform plan -var="deployment=2
terraform apply -var="deployment=2"         
# Deploy version "1" again.
terraform plan
terraform apply
terraform destroy
```
