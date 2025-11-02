module "gke_cluster" {
  count           = var.create_cluster ? 1 : 0
  source          = "../../modules/kubernetes-engine"
  project_id      = var.project_id
  region          = var.region
  cluster_info    = var.cluster_info
  network         = var.network
  subnetwork      = var.subnetwork
  service_account = var.service_account

  private_cluster_config = [{
    enable_private_endpoint = true
    enable_private_nodes    = true
    master_ipv4_cidr_block  = var.master_ipv4_cidr_block 
  }]

  ip_allocation_policy = [{
    cluster_ipv4_cidr_block  = var.cluster_ipv4_cidr_block
    services_ipv4_cidr_block = var.services_ipv4_cidr_block 
  }]

  node_pools = var.node_pools 
}