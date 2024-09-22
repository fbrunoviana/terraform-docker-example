terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  registry_auth {
    address     = "registry-1.docker.io"
    config_file = pathexpand("~/.docker/config.json")
  }
}
