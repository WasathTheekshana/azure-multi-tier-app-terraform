variable "subscription_id" {
  type        = string
  description = "Azure Subsription ID"
}

variable "client_id" {
  type        = string
  description = "Azure Client ID"
}

variable "client_secret" {
  type        = string
  description = "Azure Client Secret"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}

variable "envrionment" {
  type    = string
  default = "dev"
}

variable "location" {
  type        = string
  description = "Azure Region"
  default     = "eastus"
}

variable "default_tags" {
  type = map(string)
  default = {
    Environment = "Dev"
    Project     = "Multi Tier"
    Owner       = "Wasath"
    DeployedByIac = "True"
  }
}

variable "project_name" {
  type        = string
  description = "Project Name"
  default     = "multi-tier"
}

