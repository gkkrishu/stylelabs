* Copy this script in a fresh ubuntu machine.

==========ElasticSearch Docker Container======================
#!/bin/bash
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce
#sudo docker run hello-world
# Linux post-install
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.7.0
docker run  -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.7.0
==================Script ENDS=====================

* Upon successful execution, you can check the helath of the elasticseach by using the below command from command line,
 
	curl -XGET 'http://localhost:9200/_cluster/health?pretty=true'

* you can the get the similar output like
  
root@gopalak-lnx:~# curl -XGET 'http://localhost:9200/_cluster/health?pretty=true'
{
  "cluster_name" : "docker-cluster",
  "status" : "green",
  "timed_out" : false,
  "number_of_nodes" : 1,
  "number_of_data_nodes" : 1,
  "active_primary_shards" : 0,
  "active_shards" : 0,
  "relocating_shards" : 0,
  "initializing_shards" : 0,
  "unassigned_shards" : 0,
  "delayed_unassigned_shards" : 0,
  "number_of_pending_tasks" : 25,
  "number_of_in_flight_fetch" : 0,
  "task_max_waiting_in_queue_millis" : 5160,
  "active_shards_percent_as_number" : 100.0
}

