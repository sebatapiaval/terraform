variable "project_id" {
  description = "ID del proyecto de Google Cloud"
  type        = string
}

variable "vm_names" {
  description = "Lista de nombres para las máquinas virtuales"
  type        = list(string)
}

variable "credentials_file" {
  description = "Ruta al archivo de credenciales de GCP"
  type        = string
}

variable "region" {
  description = "Región de Google Cloud"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zona de Google Cloud"
  type        = string
  default     = "us-central1-a"
}
