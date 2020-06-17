# Maintenance of Raspberry Pi Cluster

## Linux Host Maintenance

### Problem

- Maintaining the underlying operating system on each server node takes too much time and is too easy to forget.

### Information

- Currently each of the four server nodes run the Ubuntu 20.04 LTS 64-bit operating system
- Each has an `ubuntu` user with sudo privileges
- SSH is enabled; root login disabled.

### Options

### Select

### Execute

### Evaluate

## Backup

### Problem

- Data is currently not backed up. A drive failure on any node - particularly the Kubernetes master or the one handling the persistent storage - could result in catastrophic data loss.

### Information

### Options

### Select

### Execute

### Evaluate