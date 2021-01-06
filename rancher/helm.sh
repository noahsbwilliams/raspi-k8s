helm repo add rancher-stable https://releases.rancher.com/server-charts/stable ;

# Don't actually use this as a script, it's just here 
# to save the helm commands conveniently..

kubectl create namespace cattle-system ;

helm install rancher rancher-stable/rancher \
  --namespace cattle-system \
  --set hostname=rancher.my.org \
  --set ingress.tls.source=letsEncrypt \
  --set letsEncrypt.email=public@noahsbwilliams.com ; 

kubectl -n cattle-system rollout status deploy/rancher