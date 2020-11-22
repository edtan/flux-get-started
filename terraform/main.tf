provider "kubernetes" {
  config_context = "kind-kind"
}

resource "kubernetes_config_map" "this" {
  metadata {
    name = "eds-microservice"
    namespace = "demo"
  }

  data = {
    api_host             = "myhost:443"
    DB_HOST              = "dbhost:5432"
  }
}