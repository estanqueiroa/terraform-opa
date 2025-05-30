## Install OPA

1. Download agent [release](https://github.com/open-policy-agent/opa/releases)

On Linux (64-bit):

`curl -L -o opa https://openpolicyagent.org/downloads/{{< current_version >}}/opa_linux_amd64_static`

2. Set permissions on the OPA executable:

`chmod 755 ./opa`

## Using OPA with Terraform


1. Generate a Terraform plan:

`terraform plan -out tfplan.binary`

2. Convert the plan to JSON:

`terraform show -json tfplan.binary > tfplan.json`

3. Run OPA against policies:

`opa exec --decision terraform/analysis/authz --bundle policy/ tfplan.json`

4. Check analysis score:

`opa exec --decision terraform/analysis/score --bundle policy/ tfplan.json`


## References

[Open Policy Agent](https://www.openpolicyagent.org/docs#1-download-opa)

[How to express OR in Rego](https://www.styra.com/blog/how-to-express-or-in-rego/)

[opa-terraform-policies](https://github.com/TryToLearnProgramming/opa-terraform-policies)

[OPA Terraform](https://www.openpolicyagent.org/docs/terraform)

[AWS Samples OPA](https://github.com/aws-samples/aws-infra-policy-as-code-with-terraform)

[Leveraging OPA and Rego to Automate Compliance in a CI/CD Pipeline](https://codilime.com/blog/leveraging-opa-and-rego-to-automate-compliance/)
