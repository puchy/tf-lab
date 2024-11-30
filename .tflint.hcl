config {
  call_module_type = "all"
}

plugin "terraform" {
  enabled = true
  preset  = "all"
}

# plugin "azurerm" {
#   enabled = true
#   version = "0.27.0"
#   source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
# }

plugin "aws" {
    enabled = true
    version = "0.35.0"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

rule "terraform_required_version" {
  enabled = false
}

# TODO: fix module names to not contain "-"
rule "terraform_naming_convention" {
  enabled = false
}
