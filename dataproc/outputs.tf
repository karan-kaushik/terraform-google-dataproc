output "dataproc_master_instance_names" {
    description = "List of master instance names which have been assigned to the cluster."
    value = google_dataproc_cluster.dataproc_cluster.cluster_config.0.master_config.0.instance_names
}

output "dataproc_worker_instance_names" {
    description = "List of worker instance names which have been assigned to the cluster."
    value = google_dataproc_cluster.dataproc_cluster.cluster_config.0.worker_config.0.instance_names
}

output "dataproc_preemptible_worker_instance_names" {
    description = "List of preemptible worker instance names which have been assigned to the cluster."
    value = google_dataproc_cluster.dataproc_cluster.cluster_config.0.preemptible_worker_config.0.instance_names
}

output "cluster_name" {
    description = "Name of the cluster created"
    value = google_dataproc_cluster.dataproc_cluster.name
}