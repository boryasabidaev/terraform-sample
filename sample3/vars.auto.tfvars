
kubeconfig_file = "/home/borissabidaev/work/dlp-bedrock/assets/auth/dev1-config"

map = {
  namespace1 = {
    users  = "user1,user2"
    groups = "group1,group2"
  }

  namespace2 = {
    users  = "user3"
    groups = ""
  }
}

map2 = {
  users  = ["user1", "user2"]
  groups = ["group1", "group2"]
}

map3 = {
  namespace1 = {
    users  = ["user1", "user2"]
    groups = ["group1", "group2"]
  }
  
  namespace2 = {
    users  = ["user3"]
    groups = []
  }
}