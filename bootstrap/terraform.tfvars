# Static configuration values for bootstrap
# These values don't change between environments

state_bucket_prefix = "goml-terraform-state-297834670617"

admin_role_arns = [
  "arn:aws:iam::297834670617:role/goml-github-actions-terraform",
  "arn:aws:iam::297834670617:role/aws-reserved/sso.amazonaws.com/AWSReservedSSO_GoMLDevOpsAdmin_2098023f6caa0996"
]