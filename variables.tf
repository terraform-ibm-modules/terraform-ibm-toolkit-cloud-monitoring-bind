variable "resource_group_name" {
  type        = string
  description = "Existing resource group where the IKS cluster will be provisioned."
}

variable "region" {
  type        = string
  description = "Geographic location of the resource (e.g. us-south, us-east)"
}

variable "name" {
  type        = string
  description = "The name that should be used for the service, particularly when connecting to an existing service. If not provided then the name will be defaulted to {name prefix}-{service}"
  default     = ""
}

variable "namespace" {
  type        = string
  description = "The namespace where the agent should be deployed"
  default     = "ibm-observe"
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster into which the sysdig instance should be bound"
  default     = ""
}

variable "cluster_id" {
  type        = string
  description = "The id of the cluster into which the sysdig instance should be bound"
  default     = ""
}

variable "cluster_config_file_path" {
  type        = string
  description = "The path to the config file for the cluster"
  default     = ""
}

variable "sync" {
  type        = string
  description = "Semaphore value to sync up modules"
  default     = ""
}

variable "tools_namespace" {
  type        = string
  description = "The namespace where the tools have been deployed (where the configmap should be created)"
  default     = "default"
}

variable "private_endpoint" {
  type        = string
  description = "Flag indicating that the agent should be created with private endpoints"
  default     = "true"
}
