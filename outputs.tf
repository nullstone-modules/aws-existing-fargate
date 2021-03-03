output "cluster_name" {
  value       = data.aws_ecs_cluster.this.name
  description = "string ||| "
}

output "service_discovery_id" {
  value       = coalescelist(aws_service_discovery_private_dns_namespace.service.id, local.existing_service_namespace)
  description = "string ||| "
}

output "cluster_execution_role_name" {
  value       = aws_iam_role.execution.name
  description = "string ||| "
}
