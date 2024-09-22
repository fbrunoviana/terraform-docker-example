resource "docker_container" "guelo_container" {
  name  = var.container_name
  image = docker_image.image.name

  ports {
    internal = 80
    external = 80
  }
}
