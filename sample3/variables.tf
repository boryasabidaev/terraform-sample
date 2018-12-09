variable "kubeconfig_file" {
  type = "string"
  description = "Path to kubeconfig"
}

variable "bedrock_admins" {
  type = "list"
  description = "List of usernames bound to cluster-role 'cluster-admin' in k8s cluster"
}

variable "bedrock_namespaces" {
  type = "list"
  description = "List of namespaces to create in k8s cluster"
}

variable "bedrock_users" {
  type = "list"
  description = "List of maps with keys: name, namespace, kind. Defines users for role-binding to role 'cluster-admin' in specified namespace"
}
