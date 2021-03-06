# Storage for Raspberry Pi Kubernetes project

## General-use Block Storage

### Problem

- Persistent storage is needed for stateful applications (i.e. databases, object storage) to run on cluster.
- Cluster is on-premises rather than in cloud, so no easy "managed" storage option exists.
- Two popular Kubernetes-native solutions we wanted to use (StorageOS, Rancher's "Longhorn") were found to be incompatible with hardware.

### Information

- A four-node cluster of Raspberry Pi 4 Model B+ exists.
  - Each node in cluster has Ubuntu 20.04 LTS 64-bit Linux operating system installed.
  - Nodes are networked together by a reliable ethernet connection on a private internal network.
- Each node (server) in cluster is equipped with a 128GB MicroSD card as the primary boot drive.
  - These provide identical performance but have a limited lifespan and are prone to drive failure.
  - Each is unsuitable on its' own for permanent data storage, but if federated might be usable
- In inventory is one (1) 1TB fast USB 3.0 solid-state drive.
  - This is desireable for storage but can only be used by one node at a time.

### Options

- Purchase storage drives for each node
  - Use distributed storage solution Ceph
    - Cost: $680
    - Pros: High availability
    - Cons: Cost
- Purchase storage drive for one node
  - Cost: $170
  - Setup NFS share on one node
    - Pros: Cost, standardization
    - Cons: Less availability, less-than-ideal security
  - Setup Ceph with single node persistence
    - Pros: Cost, ease of use
    - Cons: Less availability
- Setup external NAS for storage
  - Pros: Simplicity, utility for other projects
  - Cons: Cost (potentially), lack of physical portability

### Select

- Purchase storage drive for one node, setup Ceph for use on said node

### Execute

### Evaluate