variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  default     = "us-central1-a"
}

variable "name" {
  description = "Nombre de la máquina virtual"
  type        = string
  default     = "vm-dev"
}
