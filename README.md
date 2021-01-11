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



### Potential Tools




#### Storage






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