# Microk8s

microk8s scratch space

## Installation

`snap install microk8s --classic --channel=1.20`

## Joining nodes

On control plain node:

microk8s add-node

On the server nodes:

microk8s join ${node/token]}