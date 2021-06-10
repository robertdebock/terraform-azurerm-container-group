# Azure container group

Login to Azure:

```shell
az login
```

Plan & apply:

Set the variable `deployment` to a number like `1` or `2` to do a [green-blue](https://en.wikipedia.org/wiki/Blue-green_deployment) deployment.

```shell
terraform plan -var="deployment=2
terraform apply -var="deployment=2"         
terraform destroy -var="deployment=2
```
