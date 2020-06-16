# Networking for Raspberry Pi Kubernetes project

## LAN Ingress

### Problem

- There is currently no direct way to allow network ingress to the Raspberry Pi cluster

### Information

- We do not have control over the firewall settings for our network, as it is a subset of a shared building network.
- A special-purpose "travel router" consumes the shared building WiFi and connects to gigabit ethernet switch for the Raspberry Pi server nodes.
- This router also acts as a NAT/firewall, creating an internal network which allows the nodes to see each other but preventing other clients of the building WiFi from doing so.

### Options

### Select

### Execute

### Evaluate