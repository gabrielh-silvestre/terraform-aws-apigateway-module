# Recover Topic ARN for SNS integration
data "aws_sns_topic" "this" {
  for_each = toset(local.sns_names)
  name     = each.value
}

# Recover Lambda ARN for Lambda integration
data "aws_lambda_function" "this" {
  for_each = toset(local.lambdas_name)
  function_name = each.value
}
