# This TF file would have generic module.tf which can be used for any Multiple Env.

## For multiple Env, we would be created multiple .tfvars files and use it accordingly in the apply.

* example
```
terraform apply -var-file="dev.tfvars"
```