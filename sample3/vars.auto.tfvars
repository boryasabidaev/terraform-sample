
kubeconfig_file = "/home/borissabidaev/work/dlp-bedrock/assets/auth/dev1-config"

bedrock_admins = [
  "boryasabidaev",
]

bedrock_namespaces = [
  "namespace1",
  "namespace2",
]

bedrock_users = [
  {
    name = "user1"
    namespace = "namespace1"
    kind = "User"
  },
  {
    name = "group1"
    namespace = "namespace2"
    kind = "Group"
  },
] 
