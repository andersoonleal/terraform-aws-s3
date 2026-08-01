variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "environment" {
  description = "Ambiente (dev, staging, prod)"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "O ambiente deve ser dev, staging ou prod."
  }
}

variable "versioning_enabled" {
  description = "Habilitar versionamento no bucket?"
  type        = bool
  default     = false
}