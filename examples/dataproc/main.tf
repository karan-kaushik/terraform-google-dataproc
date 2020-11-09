module "dataproc_cluster" {
  source        = "../../dataproc"
  cluster_name  = ""
  project_id    = var.project_id
  region        = var.region
  zone          = var.zone
  network       = var.network
  subnetwork    = var.subnetwork
  network_tags  = ["dataproc-cluster"]
  service_account = var.service_account
  staging_bucket = "test-dp-bucket" 

  // master_config
  master_num_instances     = 1
  master_machine_type      = "n1-standard-2"
  master_boot_disk_type    = "pd-ssd"
  master_boot_disk_size_gb = 50
  master_num_local_ssds    = 0

  // worker_config
  worker_num_instances     = 1
  worker_machine_type      = "n2-standard-2"
  worker_boot_disk_type    = "pd-ssd"
  worker_boot_disk_size_gb = 50
  worker_num_local_ssds    = 0

  // preemptible_worker_config
  preemptible_num_instances     = 1
  preemptible_boot_disk_type    = "pd-ssd"
  preemptible_boot_disk_size_gb = 50
  preemptible_num_local_ssds    = 0

  // software_config
  image_version = "1.4-ubuntu18"

}