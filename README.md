# raspi-k8s

Deploying Kubernetes on Raspberry Pi cluster

## Functions

### Teach Noah how to use Kubernetes from scratch

- Install
- Setup
  - Stop using the word configure!
- Maintain
- Secure

## Things we might need to make it work

### Computers

- Storage
  - [x] Internal boot drives (MicroSD cards)
  - [ ] External storage drives
- Processing
  - [x] Raspberry Pi 4 B+ x4
- Memory
  - [x] Internal RAM 16GB
- Connections
  - [x] Switch
  - [x] Cables
  - [x] Raspi network holepunch
  - [ ] Router
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

### Potential Tools (Uncategorized)

- [Ansible Hostname Changer](https://github.com/codylane/ansible-playbook-change-hostname)
  - [Official Docs](https://docs.ansible.com/ansible/latest/modules/hostname_module.html)
  - [Changing Hostname the Manual Way](https://www.howtogeek.com/167195/how-to-change-your-raspberry-pi-or-other-linux-devices-hostname/)
- [Ansible Hosts documentation](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html)
- [Encrypting secrets](https://www.youtube.com/watch?v=BBTadK3cAww) using Ansible's own Vault (not to be confused with Hashicorp Vault)
- [Retrieving secrets](https://docs.ansible.com/ansible/latest/plugins/lookup/hashi_vault.html) using Hashicorp Vault
- [Raspberry Pi Dramble](https://github.com/geerlingguy/raspberry-pi-dramble/tree/master/roles)
- [KubeADM Ansible Repo](https://github.com/kairen/kubeadm-ansible)
- [K3s Overview/Showcase](https://www.youtube.com/watch?v=WYPd7i15XOg&feature=share)
- [Ingress Controllers explained](https://www.youtube.com/watch?v=GhZi4DxaxxE)
- [Kubernetes for the common developer](https://www.youtube.com/watch?v=lAyL9HKx8cQ)
- [Persistent Kubernetes storage application](https://github.com/longhorn/longhorn)