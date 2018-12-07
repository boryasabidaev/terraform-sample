resource "kubernetes_namespace" "k8s_provider_test" {
  metadata {
    name = "k8s-provider-test"
  }
}

resource "kubernetes_cluster_role" "cluster_role" {
  metadata {
    name = "newclusterrole"
  }

  rule {
    api_groups = [""]
    resources  = [""]
    verbs      = ["get", "watch"]
  }
}

resource "kubernetes_role_binding" "role_binding" {
  metadata {
    name = "newrolebinding"
    namespace = "${kubernetes_namespace.k8s_provider_test.metadata.0.name}"
  }

  role_ref {
    kind = "ClusterRole"
    name = "cluster-admin"
    api_group = "rbac.authorization.k8s.io"
  }

  subject {
    kind = "User"
    name = "borya-sabidaev"
    api_group = "rbac.authorization.k8s.io"
  }
}

resource "kubernetes_cluster_role_binding" "cluster_role_binding" {
  metadata {
    name = "new-cluster-rb"
  }

  role_ref {
    kind = "ClusterRole"
    name = "cluster-admin"
    api_group = "rbac.authorization.k8s.io"
  }

  subject {
    kind = "User"
    name = "borya-sabidaev"
    api_group = "rbac.authorization.k8s.io"
  }
}


# resource "kubernetes_namespace" "products" {
#   count = ${length(var.map)}

#   metadata {
#     name = "${element(keys(var.map), count.index)}"
#   }
# }
