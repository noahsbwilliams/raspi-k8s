# Primary Storage for Kubernetes cluster

Uses:

- [Longhorn](https://longhorn.io), a simple, highly-availible storage manager.

Installed with:

- [Helm Chart](https://github.com/longhorn/longhorn/tree/master/chart)

Utilities:

- [Port forwarding script](./port-forward.sh) for simple access to Longhorn GUI dashboard.

Settings:

- [StorageClasses/ssd.yaml](./StorageClasses/ssd.yaml) adds `ssd` as a `StorageClass` for nodes tagged with `storage` and disks tagged with `ssd`.
