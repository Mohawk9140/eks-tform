###### root/kubernetes.tf

resource "kubernetes_deployment" "week22" {
  metadata {
    name = "terraform-week22"
    labels = {
      test = "Week22App"
    }
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        test = "Week22App"
      }
    }
    template {
      metadata {
        labels = {
          test = "Week22App"
        }
      }
      spec {
        container {
          image = "nginx:1.7.8"
          name  = "week22"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "luit22" {
  metadata {
    name = "terraform-week22"
  }

  spec {
    selector = {
      test = "week22App"
    }
    port {
      port        = 80
      target_port = 80
      node_port   = 30010
    }

    type = "LoadBalancer"
  }
}
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
