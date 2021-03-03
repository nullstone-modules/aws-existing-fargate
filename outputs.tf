output "cluster_name" {
  value       = data.aws_ecs_cluster.this.name
  description = "string ||| "
}

output "cluster_execution_role_name" {
  value       = aws_iam_role.execution.name
  description = "string ||| "
}
