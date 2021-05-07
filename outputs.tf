output "cluster_arn" {
  value       = data.aws_ecs_cluster.this.arn
  description = "string ||| AWS Arn for the Fargate cluster."
}

output "cluster_name" {
  value       = data.aws_ecs_cluster.this.cluster_name
  description = "string ||| Name of the Fargate cluster."
}

output "cluster_execution_role_name" {
  value       = aws_iam_role.execution.name
  description = "string ||| Name of AWS Role that is usually attached to each service for execution."
}

output "deployer" {
  value = {
    name       = aws_iam_user.deployer.name
    access_key = aws_iam_access_key.deployer.id
    secret_key = aws_iam_access_key.deployer.secret
  }

  description = "object({ name: string, access_key: string, secret_key: string }) ||| An AWS User with explicit privilege to deploy ECS services."

  sensitive = true
}
