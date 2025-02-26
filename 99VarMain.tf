variable "project" {
    description = "The project name"
    type        = string
    sensitive   = false
}

variable "password" {
    description = "The password of the db"
    type        = string
    sensitive   = true 
}

variable "region" {
    description = "The region"
    type        = string
    sensitive   = false
}

variable "credentials" {
    description = "The credentials file"
    type        = string
    sensitive   = true
}

variable "name_instance" {
    description = "The name of the instance"
    type        = string
    sensitive   = false
}

variable "machine_type" {
    description = "The machine type"
    type        = list(string)
    sensitive   = true
    default     = [ "e2-micro", "e2-small", "e2-medium", "e2-standard-2", "e2-standard-4", "e2-standard-8", "e2-standard-16", "e2-standard-32", "e2-standard-64", "e2-standard-96" ]
}

