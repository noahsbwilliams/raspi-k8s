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




#### Storage




- Mounting & Formatting Drives on Linux Review
  - [Mounting](https://vitux.com/how-to-manually-mount-unmount-a-usb-device-on-ubuntu/)
  - [Formatting](https://www.techwalla.com/articles/how-to-format-a-usb-flash-drive-in-linux)
  - [Modifying the `fstab`](https://www.howtogeek.com/howto/38125/htg-explains-what-is-the-linux-fstab-and-how-does-it-work/)

#### Secrets

- [Retrieving secrets](https://docs.ansible.com/ansible/latest/plugins/lookup/hashi_vault.html) using Hashicorp Vault


#### Networking

- [Ingress Controllers explained](https://www.youtube.com/watch?v=GhZi4DxaxxE)
- [Example code of Traefik Ingress Controller](https://docs.traefik.io/user-guides/crd-acme/)
- ~~[Inlets](https://github.com/inlets/inlets), a cloud-native tunneling system supporting ARM64~~
  - Big thanks to [BattlePope](https://www.reddit.com/user/BattlePope) for recommending this
  - Ultimately decided against as the open source version wasn't suitable for a pseudo-production environment due to a lack of L4 TCP tunneling support
- [SSH tunneling container](https://github.com/Jossec101/SSHTunneller)
  - Could be suitable in a future revision that incluses built-in tunneling support
- [AutoSSH (standard) Container](https://github.com/jnovack/docker-autossh)

#### Peripheral

- `systemd` Services Review Tutorial
  - [Video](https://www.youtube.com/watch?v=fYQBvjYQ63U)
  - [Written](https://www.devdungeon.com/content/creating-systemd-service-files) 

#### Not yet categorized

- [Kubernetes for the common developer](https://www.youtube.com/watch?v=lAyL9HKx8cQ)