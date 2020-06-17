# Networking for Raspberry Pi Kubernetes project

## LAN Ingress

### Problem

- There is currently no direct way to allow network network ingress to the Raspberry Pi cluster.

### Information

- We do not have control over the firewall settings for our network, as it is a subset of a shared building network.
- A special-purpose "travel router" consumes the shared building WiFi and connects to gigabit ethernet switch for the Raspberry Pi server nodes.
- This router also acts as a NAT/firewall, creating an internal network which allows the nodes to see each other but preventing other clients of the building WiFi from doing so.

### Options

- Create tunnels using [Inlets]
  - Pros: Simple, designed just for HTTP(S) traffic.
  - Cons:
    - L7 only; just works for HTTP(S), supporting no other protocols.
    - For proper security, TLS termination seems to be necessary at relay node. This requires decryption and re-encryption to secure the whole chain.
- Create tunnels using reverse SSH tunneling with [SSH container](https://hub.docker.com/r/linuxserver/openssh-server)
  - Pros:
    - Supports any protocol; is essentially just an encrypted TCP stream.
    - Doesn't require terminating TLS at relay node.
  - Cons:
    - Requires fairly complicated client-side setup.

### Select

### Execute

### Evaluate