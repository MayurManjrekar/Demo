variable "create_cluster" {
  type    = bool
  default = true
}

variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "network" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "service_account" {
  type = string
}

variable "master_ipv4_cidr_block" {
  type = string
}

variable "cluster_ipv4_cidr_block" {
  type = string
}

variable "services_ipv4_cidr_block" {
  type = string
}

variable "cluster_info" {
  type = object({
    name                     = string
    remove_default_node_pool = bool
    initial_node_count       = number
    release_channel          = string
  })
  description = "Configuration details for the GKE cluster."
}

variable "node_pools" {
  type = map(object({
    name               = string
    machine_type       = string
    disk_size_gb       = number
    initial_node_count = number
    min_node_count     = number
    max_node_count     = number
    locations          = list(string)
    labels             = map(string)
    taint              = list(object({
      key    = string
      value  = string
      effect = string
    }))
  }))
}