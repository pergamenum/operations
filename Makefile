.PHONY: tidy apply _prep _genesis _purge _prompt

test: _prompt
	@scripts/./test

tidy:
	terraform init
	terraform fmt
	terraform validate

apply: tidy
	terraform apply

_prep:
	@scripts/./prep_project
	@scripts/./prep_terraform

_genesis: _prep apply

_purge: _prompt
	terraform destroy
	rm -rf .terraform
	rm .terraform.lock.hcl
	rm terraform.tfvars

_prompt:
	@echo "Are you sure? [y/N] " && read ans && [ $${ans:-N} = y ]