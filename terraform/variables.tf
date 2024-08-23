variable "nginx_image" {
  description = "The Docker image for the NGINX load balancer"
  default     = "nginx:latest"
}

variable "app_image" {
  description = "The Docker image for the Node.js application"
  default     = "node-app:latest"
}