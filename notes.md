# Project Notes


---

## Discarded Tech

- ~~Ceph Filesystem~~ ❌ - **too complicated, unreliable**
  - [Ceph Docker Image](https://hub.docker.com/r/ceph/ceph)
    - Supports both x86-64 and ARM64
  - [Ceph Setup Guide on Kubernetes](https://www.youtube.com/watch?v=wIRMxl_oEMM)
    - Uses tool Rook which Kubernetifies Ceph
    - Includes simple means to specify which nodes are used for storage & what the mount path is on them
  - [Rook/Ceph yaml examples](https://github.com/rook/rook/tree/release-1.4/cluster/examples/kubernetes/ceph)
  - [Provisioning Ceph Block Storage](https://rook.io/docs/rook/v1.4/ceph-block.html)
  - Seems to be the industry standard in cloud "block" storage - highly-available virtual disks for VPS in DigitalOcean, AWS

- ~~NFS Storage~~ ❌ - **neither integrated nor redundant**
  - [DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-20-04)
  - [Rancher](https://rancher.com/docs/rancher/v2.x/en/cluster-admin/volumes-and-storage/examples/nfs/)
  - Deemed unsuitable due to lack of redundancy