terraform {
  required_version = ">= 0.11.0"
}


provider "kubernetes" {
  config_path = "${var.kubeconfig_file}"
}
