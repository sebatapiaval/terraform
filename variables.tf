variable "google_credentials" {
  description = "Ruta al archivo de credenciales de GCP"
  type        = string
}

variable "project_id" {
  description = "ID del proyecto de GCP"
  type        = string
}

variable "region" {
  description = "Región de GCP"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zona de GCP"
  type        = string
  default     = "us-central1-a"
}

variable "vm_names" {
  description = "Lista de nombres de las máquinas virtuales"
  type        = list(string)
}
