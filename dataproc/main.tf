resource "google_dataproc_cluster" "dataproc_cluster" {
    name    = var.cluster_name
    project = var.project_id
    region  = var.region

    labels  = var.labels

    cluster_config {
 
        staging_bucket        = var.staging_bucket

        master_config {
            num_instances     = var.master_num_instances
            machine_type      = var.master_machine_type
            disk_config {
                boot_disk_type    = var.master_boot_disk_type
                boot_disk_size_gb = var.master_boot_disk_size_gb
                num_local_ssds    = var.master_num_local_ssds
            }
        }

        worker_config {
            num_instances     = var.worker_num_instances
            machine_type      = var.worker_machine_type
            disk_config {
                boot_disk_type    = var.worker_boot_disk_type
                boot_disk_size_gb = var.worker_boot_disk_size_gb
                num_local_ssds    = var.worker_num_local_ssds
            }
        }

        preemptible_worker_config {
            num_instances     = var.preemptible_num_instances
            disk_config {
                boot_disk_type    = var.preemptible_boot_disk_type
                boot_disk_size_gb = var.preemptible_boot_disk_size_gb
                num_local_ssds    = var.preemptible_num_local_ssds
            }
        }

        # Override or set some custom properties
        software_config {
            image_version       = var.image_version
            override_properties = {
                "dataproc:dataproc.allow.zero.workers" = "true"
            }
        }

        gce_cluster_config {
	service_account = var.service_account
	service_account_scopes = [
        "https://www.googleapis.com/auth/monitoring",
        "useraccounts-ro",
        "storage-rw",
        "logging-write",
         ]
            subnetwork          = var.subnetwork
            zone                = var.zone
            internal_ip_only    = true
            tags                = var.network_tags
        }
        initialization_action {
            script      = "gs://test-dp-bucket/env-variable.sh"
            timeout_sec = 500
        }

    }
}
