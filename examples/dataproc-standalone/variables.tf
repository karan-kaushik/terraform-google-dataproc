variable "project_id" {
    description = "The project in which the cluster will exist"
}

variable "region" {
    description = "The region in which the cluster and associated nodes will be created in"
}

variable "network" {
    description = "The network in which the cluster and associated nodes will be created in"
}

variable "subnetwork" {
    description = "The subnet in which the cluster and associated nodes will be created in"
}

variable "zone" {
    description = "The zone in which the cluster and associated nodes will be created in"
}

variable "policy_name" {
    description = "The Dataproc autoscaling policy to use for the cluster"
    default     = ""
}

variable "service_account" {}
