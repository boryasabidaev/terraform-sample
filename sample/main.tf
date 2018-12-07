

resource "random_string" "restic_password" {
  length = 24
  special = false
}


output "first" {
  value = "null"
}

output "second" {
  value = "${random_string.restic_password.result}"
}

output "third" {
  value = "${replace(replace(lower("${var.rg}${var.cn}"), "/-|_/", ""), "/(.{0,17})(.*)/", "$1")}backup" 
}