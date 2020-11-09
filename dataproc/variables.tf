variable "cluster_name" {
    description = "The name of the cluster, unique within the project and zoneData"
}

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

variable "network_tags" {
    description = "The list of tags to be applied to instances in the cluster"
    default = ["dataproc-cluster"]
}

variable "labels" {
    description = "The list of labels (key/value pairs) to be applied to instances in the cluster"
    default     = {}
}

variable "delete_autogen_bucket" {
    description = "If this is set to true, upon destroying the cluster, if no explicit staging_bucket was specified (i.e. an auto generated bucket was relied upon) then this auto generated bucket will also be deleted as part of the cluster destroy"
    default     = "false"
}

variable "staging_bucket" {
    description = "The Cloud Storage staging bucket used to stage files, such as Hadoop jars, between client machines and the cluster"
    default =   ""
}

variable "master_num_instances" {
    description = "Specifies the number of master nodes to create"
    default     = 1
}

variable "master_machine_type" {
    description = "The name of a Google Compute Engine machine type to create for the master"
    default     = "n1-standard-1"
}

variable "master_boot_disk_type" {
    description = "Specifies the tpye of master nodes boot disk"
    default     = "pd-standard"
}

variable "master_boot_disk_size_gb" {
    description = "Size of the primary disk attached to each node, specified in GB"
    default     = 15
}

variable "master_num_local_ssds" {
    description = "The amount of local SSD disks that will be attached to master cluster node"
    default     = 0
}

variable "worker_num_instances" {
    description = "Specifies the number of worker nodes to create"
    default     = 2
}

variable "worker_machine_type" {
    description = "The name of a Google Compute Engine machine type to create for the worker nodes"
    default     = "n1-standard-1"
}

variable "worker_boot_disk_type" {
    description = "Specifies the tpye of worker nodes boot disk"
    default     = "pd-standard"
}

variable "worker_boot_disk_size_gb" {
    description = "Size of the primary disk attached to each worker node, specified in GB"
    default     = 15
}

variable "worker_num_local_ssds" {
    description = "The amount of local SSD disks that will be attached to each worker cluster node"
    default     = 0
}

variable "preemptible_num_instances" {
    description = "Specifies the number of preemptible nodes to create"
    default     = 0
}

variable "preemptible_boot_disk_type" {
    description = "Specifies the tpye of preemptible worker nodes boot disk"
    default     = "pd-standard"
}

variable "preemptible_boot_disk_size_gb" {
    description = "Size of the primary disk attached to each preemptible worker node, specified in GB"
    default     = 15
}

variable "preemptible_num_local_ssds" {
    description = "The amount of local SSD disks that will be attached to each preemptible worker cluster node"
    default     = 0
}

variable "image_version" {
    description = "The Cloud Dataproc image version to use for the cluster"
    default     = "1.4"
}

variable "policy_name" {
    description = "The Dataproc autoscaling policy to use for the cluster"
    default     = ""
}

variable "service_account" {}
