resource "helm_release" "first-one" {
  name       = "my-redis-release"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"
  #version    = "6.0.1"
  

  values = [
    "${file("values.yaml")}"
  ]

  set{
    name  = "cluster.enable"
    value = "true"
  }
}
