# resource "kubernetes_cluster_role_binding" "bedrock_admins" {
#   count = "${length(var.bedrock_admins)}"
#   
#   metadata {
#     name = "${var.bedrock_admins[count.index]}"
#   }

#   role_ref {
#     kind = "ClusterRole"
#     name = "cluster-admin"
#     api_group = "rbac.authorization.k8s.io"
#   }

#   subject {
#     kind = "User"
#     name = "${var.bedrock_admins[count.index]}"
#     api_group = "rbac.authorization.k8s.io"
#   }
# }

# resource "kubernetes_namespace" "bedrock_namespaces" {
#   count = ${length(var.bedrock_namespaces)}
 
#   metadata {
#     name = "${element(var.bedrock_namespaces, count.index)}"
#   }
# }

# resource "kubernetes_role_binding" "bedrock_users" {
#   count = "${length(var.bedrock_users)}"
#   
#   metadata {
#     name = "${lookup(var.bedrock_users[count.index], "name")}"
#     namespace = "${lookup(var.bedrock_users[count.index], "namespace")}"
#   }

#   role_ref {
#     kind = "ClusterRole"
#     name = "cluster-admin"
#     api_group = "rbac.authorization.k8s.io"
#   }

#   subject {
#     kind = "${lookup(var.bedrock_users[count.index], "kind")}"
#     name = "${lookup(var.bedrock_users[count.index], "name")}"
#     api_group = "rbac.authorization.k8s.io"
#   }
# }

data "template_file" "temp" {
  count = "${length(var.bedrock_users)}"

  template = "${lookup(var.bedrock_users[count.index], "name")}"
}

output "output0" {
  value = "${var.bedrock_namespaces}"
}

output "output1" {
  value = "${var.bedrock_users}"
}

output "output2" {
  value = "${data.template_file.temp.1.rendered}"
}
