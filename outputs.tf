output "cluster_arn" {
  value       = data.aws_ecs_cluster.this.arn
  description = "string ||| AWS Arn for the Fargate cluster."
}

output "cluster_name" {
  value       = data.aws_ecs_cluster.this.cluster_name
  description = "string ||| Name of the Fargate cluster."
}

output "deployers_name" {
  value       = aws_iam_group.deployers.name
  description = "string ||| Name of the deployers IAM Group that is allowed to deploy to the Fargate cluster."
}
