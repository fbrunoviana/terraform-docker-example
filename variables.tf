variable "image_name" {
  description = "The name of the Docker image"
  type        = string
  default     = "guelo"
}
variable "author_name" {
  description = "The name of the Author the image"
  type        = string
  default     = "Bruno Viana"
}
variable "container_name" {
  description = "The name of the Docker container"
  type        = string
  default     = "guelo_container"
}