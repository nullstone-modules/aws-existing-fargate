data "aws_service_discovery_namespaces" "all" {
  vpc_id = data.ns_connection.network.outputs.vpc_id

  filters {
    name      = "TYPE"
    condition = "EQ"
    values    = ["DNS_PRIVATE"]
  }
}

locals {
  existing_service_namespace = [for namespace in data.aws_service_discovery_namespaces.all.namespaces : (namespace.name == "service" ? namespace.id : "")]
}

resource "aws_service_discovery_private_dns_namespace" "service" {
  name = "service"
  vpc  = data.ns_connection.network.outputs.vpc_id
  tags = data.ns_workspace.this.tags

  count = local.existing_service_namespace == "" ? 1 : 0
}
