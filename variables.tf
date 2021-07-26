variable "chart-name" {
  type = string
  default = "chart"
}

variable "namespace" {
  type = string
  default = "default"
}

variable "replicas" {
  type = number
  default = 1
}

variable "deployment-name" {
  type = string
  default = "nginx"
}

variable "app-version" {
  type = string
  default = "1.0.0"
}