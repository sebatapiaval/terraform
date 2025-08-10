variable "google_credentials" {
  description = "Ruta al archivo de credenciales de GCP"
  type        = string
}

variable "project_id" {
  description = "ID del proyecto en GCP"
  type        = string
}

variable "region" {
  description = "Región donde se crearán los recursos"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zona donde se crearán los recursos"
  type        = string
  default     = "us-central1-a"
}

variable "vm_names" {
  description = "Lista de nombres para las máquinas virtuales"
  type        = list(string)
}
