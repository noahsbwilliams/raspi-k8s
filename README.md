# Raspi-K8s

Deploying Kubernetes on Raspberry Pi cluster

## Functions

### Teach Noah how to use Kubernetes on-prem in a production environment

- Install
- Setup
  - Stop using the word configure!
- Maintain
- Secure

## Things we might need to make it work

### Computers

- Storage
  - [x] Internal boot drives (MicroSD cards)
  - [x] External storage drive
- Processing
  - [x] Raspberry Pi 4 B+ x4
- Memory
  - [x] Internal RAM 16GB
- Connections
  - [x] Switch
  - [x] Cables
  - [x] Raspi network holepunch
  - [x] Router
- Electricity
  - [x] POE Switch
  - [x] Power strip

### Software

- Standardization tools
- Remote command tools
- Maintenance tools
- Storage management tools
- Firewall buster tools
  - Virtual computers somewhere else
- Security tools
  - Transport Layer Security
  - Secret storage

### Potential Tools


#### Node Provisioning

- ~~[Ansible Hostname Changer](https://github.com/codylane/ansible-playbook-change-hostname)~~
  - ~~[Official Docs](https://docs.ansible.com/ansible/latest/modules/hostname_module.html)~~
  - ~~[Changing Hostname the Manual Way](https://www.howtogeek.com/167195/how-to-change-your-raspberry-pi-or-other-linux-devices-hostname/)~~
  - Decided against changing hostnames with Ansible as it added more complication than it subtracted.
- [Ansible Hosts documentation](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html)
- [Encrypting secrets](https://www.youtube.com/watch?v=BBTadK3cAww) using Ansible's own Vault (not to be confused with Hashicorp Vault)
- [Raspberry Pi Dramble](https://github.com/geerlingguy/raspberry-pi-dramble/tree/master/roles) Ansible repo
- ~~[KubeADM Ansible Repo](https://github.com/kairen/kubeadm-ansible)~~
  - Decided to go with K3s instead of mainline Kubernetes

#### Storage

- ~~[Rancher Longhorn](https://github.com/longhorn/longhorn)~~
  - No ARM64 support, not an option :(

- ~~NFS Storage~~
  - [DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-20-04)
  - [Rancher](https://rancher.com/docs/rancher/v2.x/en/cluster-admin/volumes-and-storage/examples/nfs/)
  - Deemed unsuitable due to lack of redundancy

- Ceph Filesystem ✅
  - [Ceph Docker Image](https://hub.docker.com/r/ceph/ceph)
    - Supports both x86-64 and ARM64
  - [Ceph Setup Guide on Kubernetes](https://www.youtube.com/watch?v=wIRMxl_oEMM)
    - Uses tool Rook which Kubernetifies Ceph
    - Includes simple means to specify which nodes are used for storage & what the mount path is on them
  - [Rook/Ceph yaml examples](https://github.com/rook/rook/tree/release-1.3/cluster/examples/kubernetes/ceph)
  - Seems to be the industry standard in cloud "block" storage - highly-available virtual disks for VPS in DigitalOcean, AWS

- Mounting & Formatting Drives on Linux Review
  - [Mounting](https://vitux.com/how-to-manually-mount-unmount-a-usb-device-on-ubuntu/)
  - [Formatting](https://www.techwalla.com/articles/how-to-format-a-usb-flash-drive-in-linux)
  - [Modifying the `fstab`](https://www.howtogeek.com/howto/38125/htg-explains-what-is-the-linux-fstab-and-how-does-it-work/)

#### Secrets

- [Retrieving secrets](https://docs.ansible.com/ansible/latest/plugins/lookup/hashi_vault.html) using Hashicorp Vault
- [K3s Overview/Showcase](https://www.youtube.com/watch?v=WYPd7i15XOg&feature=share)
- [Ingress Controllers explained](https://www.youtube.com/watch?v=GhZi4DxaxxE)
- [Kubernetes for the common developer](https://www.youtube.com/watch?v=lAyL9HKx8cQ)


#### Networking

- ~~[Inlets](https://github.com/inlets/inlets), a cloud-native tunneling system supporting ARM64~~
  - Big thanks to [BattlePope](https://www.reddit.com/user/BattlePope) for recommending this
  - Ultimately decided against as the open source version wasn't suitable for a pseudo-production environment due to a lack of L4 TCP tunneling support
- [SSH tunneling container](https://github.com/Jossec101/SSHTunneller)
- [AutoSSH (standard) Container](https://github.com/jnovack/docker-autossh)

#### Peripheral

- `systemd` Services Review Tutorial
  - [Video](https://www.youtube.com/watch?v=fYQBvjYQ63U)
  - [Written](https://www.devdungeon.com/content/creating-systemd-service-files) 

#### Not yet categorized