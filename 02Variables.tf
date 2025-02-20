variable "project_name" {
  description = "El nombre del proyecto"
  default     = ""
}

variable "vpc_name" {
  default     = ""
  description = "Nombre de la VPC"
}

variable "ports_allows" {
  type = list(string)
  description = "Los puertos que estarán disponibles para el acceso desde fuera."
  default = ["22", "80", "443", "3306", "8761", "8082"]
}

variable "location_project" {
  default     = ""
  description = "Ubicación real del cluster dentro de GCP"
}

variable "zone_project" {
  default = ""
  description = "Zona del servidor"
}

variable "machine_type" {
  default     = "e2-micro"
  description = "Tipo de maquina del cluster"
}

variable "credentials_project" {
  default     = ""
  sensitive   = true
  description = "Credenciales para el acceso a GCP"
}

