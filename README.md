# Raspberry Pi Kubernetes

Batteries-included, on-prem Kubernetes

Kubernetes was developed to be cloud-agnostic, but not environment-agnostic. In trying to spin up our own cluster on-prem, we discovered that basic functions like file storage weren't supported by default. Our intent with this project is to source all components necessary to build an on-prem cluster functionally equivalent to one you might find in a public cloud.
## Software

### Kubernetes Distribution ✅

- [x] [K3s](https://k3s.io)
### Storage ✅

- [x] [Longhorn](https://longhorn.io)


### Networking ✅/❌

- [x] `autossh` hacked together reverse tunnel for now
- [ ] More permanent solution under exploration, undecided

### Secrets Management ❌

- [ ] [Vault](https://www.vaultproject.io) (HA mode) use intended
- [ ] Native Kubernetes [secrets encryption](https://kubernetes.io/docs/tasks/administer-cluster/encrypt-data/) also a possibility

## Hardware

- [x] [Raspberry Pi 4, 4GB](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/?variant=raspberry-pi-4-model-b-4gb) 🖥
- [x] [4-port PoE switch](https://www.tp-link.com/us/business-networking/unmanaged-switch/tl-sg1005p/) 🌐
- [x] [4-board cluster case](https://www.newegg.com/p/1B4-06RX-06YE8?Description=raspberry%20pi%20cluster&cm_re=raspberry_pi%20cluster-_-9SIA3TBD888144-_-Product) 🧳
- [x] [128GB microSD cards](https://www.amazon.com/gp/product/B07BS3HLY9/ref=ppx_yo_dt_b_asin_title_o01_s00?ie=UTF8&psc=1) 💾
- [x] [Samsung T5 SSD, 1TB](https://www.samsung.com/semiconductor/minisite/ssd/product/portable/t5/) 💾