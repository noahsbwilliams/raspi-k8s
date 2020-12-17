# Helm installation script for Longhorn

helm repo add longhorn https://charts.longhorn.io;

helm repo update;

kubectl create namespace longhorn-system;

helm install longhorn longhorn/longhorn --namespace longhorn-system;

kubectl -n longhorn-system get pod