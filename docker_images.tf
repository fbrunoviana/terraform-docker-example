resource "docker_image" "image" {
  name         = var.image_name
  keep_locally = false

  build {
    context = "."
    tag     = ["${var.image_name}:latest"]
    label = {
      author = var.author_name
    }
  }

  triggers = {
    dockerfile_hash = filesha1("${path.module}/Dockerfile")
    dir_sha1        = sha1(join("", [for f in fileset(path.module, "src/*") : filesha1(f)]))
  }
}
