kubectl create namespace cert-manager;

# This script doesn't work because I haven't bothered to escape the semicolons, just run these one at a time...
helm repo add jetstack https://charts.jetstack.io ;

helm repo update;

helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --version v1.1.0 \
  --set installCRDs=true