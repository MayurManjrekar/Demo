create_cluster  = true
project_id      = "qwiklabs-gcp-03-02605f581a7f"
region          = "us-central1"
cluster_info    = "dev-gke-cluster"
network         = "dev-vpc-network"
subnetwork      = "dev-cluster-subnet"
service_account = "sa-dev-gke@gcp-dev-environment-101.iam.gserviceaccount.com"

master_ipv4_cidr_block  = "10.1.0.0/28"
cluster_ipv4_cidr_block = "10.2.0.0/21"
services_ipv4_cidr_block = "10.3.0.0/21"

node_pools = {
  linux_pool_1 = {
    name               = "app-linux-pool"
    machine_type       = "e2-medium"
    disk_size_gb       = 50
    initial_node_count = 1  
    min_node_count     = 1
    max_node_count     = 2 
    locations          = ["us-central1-a"]
    labels             = { os = "linux" }
    taint = [
      {
        key    = "os"
        value  = "linux"
        effect = "NO_SCHEDULE"
      },
    ]
  },
  linux_pool_2 = {
    name               = "linux-pool-default"
    machine_type       = "e2-small"
    disk_size_gb       = 20
    initial_node_count = 1
    min_node_count     = 1
    max_node_count     = 2
    locations          = ["us-central1-a"]
    labels             = { os = "linux" }
    taint              = []
  }
}