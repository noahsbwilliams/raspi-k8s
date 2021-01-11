# Project Notes

## Storage

- [Rancher Longhorn](https://github.com/longhorn/longhorn) ✅
  - Simple, user-friendly solution made by the creators of k3s
  - Easy automated backups to S3 or NFS
  - Gained ARM64 support as of [v1.1.0](https://github.com/longhorn/longhorn/releases/tag/v1.1.0) - yay!
    - ~~No ARM64 support, not an option :(~~
## Node Provisioning & Maintenance

- [K3s Kubernetes Distro](https://www.youtube.com/watch?v=WYPd7i15XOg) ✅
  - Simple, built-for-production Kubernetes distro, without the restrictions of microk8s
- ~~[Ansible Hostname Changer](https://github.com/codylane/ansible-playbook-change-hostname)~~
  - ~~[Official Docs](https://docs.ansible.com/ansible/latest/modules/hostname_module.html)~~
  - ~~[Changing Hostname the Manual Way](https://www.howtogeek.com/167195/how-to-change-your-raspberry-pi-or-other-linux-devices-hostname/)~~
  - Decided against changing hostnames with Ansible as it added more complication than it subtracted.
- [Ansible Hosts documentation](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html)
- [Encrypting secrets](https://www.youtube.com/watch?v=BBTadK3cAww) using Ansible's own Vault (not to be confused with Hashicorp Vault)
- [Raspberry Pi Dramble](https://github.com/geerlingguy/raspberry-pi-dramble/tree/master/roles) Ansible repo
- ~~[KubeADM Ansible Repo](https://github.com/kairen/kubeadm-ansible)~~
  - Decided to go with K3s instead of mainline Kubernetes

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