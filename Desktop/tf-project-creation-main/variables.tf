variable "project_id" {
    type = string
    default = "test-tf-100"
    description = "ID del proyecto que será creado y en el que se crearán los recursos."
}

variable "budget_amount" {
  type        = string
  default     = "0"
  description = "Presupuesto que se asignará al proyecto. Con este monto se configurará una alerta."
}

variable "email_owner" {
  type = string
  default = "user@dominio.com"
  description = "Email del propietario del proyecto. Se le dará editor."
}

variable "region" {
  type        = string
  default     = "us-central1"
  description = "Region en la que se creará el proyecto y los recursos por default."
}

variable "zone" {
  type        = string
  default     = "us-central1-c"
  description = "Zona en la que se creará el proyecto y los recursos por default."
}

variable "organization_id" {
  type        = string
  default     = "11111111111111"
  description = "ID de la organización bajo la que se creará el proyecto."
}

variable "billing_account" {
  type        = string
  default     = "1111111111111"
  description = "ID de billing account en la que se creará el proyecto."
}

### LABELS ###
# NO PONER MAYÚSUCLAS EN LOS LABELS, SE TOMAN COMO ERROR!!! TODA LETRA EN MINÚSCULA #

variable "cli" {
    type = string
    default = "cliente"
    description = "Cliente al cual se le creará el proyecto."
}

variable "env" {
    type = string
    default = "dev"
    description = "Ambiente del proyecto: dev, test o prod."
}

variable "area" {
  type = string
  default = "cloud_admin"
  description = "Área a la cual pertenece el proyecto."
}
