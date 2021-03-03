# block-aws-existing-fargate

Nullstone Block used to represent an AWS Fargate cluster that already exists.
This will create an execution role even if one exists that is used for launching additional containers.

A service discovery namespace is created as well for `.service` that additional containers will use.
If an existing service discovery namespace exists in the network named `.service`, this module will not attempt to create an additional one.NOTE: At this time, if a network already has one defined, this module could error. A future update will attempt to resolve gracefully.

## Inputs

- `name: string`
  - Name of existing Fargate cluster to find

## Outputs

- `cluster_name: string`
    - Name of Fargate cluster

- `service_discovery_id`
    - AWS ID for Service Discovery namespace used for internal DNS service discovery registration

- `cluster_execution_role_arn: string`
    - AWS ARN for Execution Role preconfigured to run in Fargate cluster from AWS ECR (Image Registry)
