helm repo add rancher-stable https://releases.rancher.com/server-charts/stable ;

# Don't actually use this as a script, it's just here 
# to save the helm commands conveniently..

kubectl create namespace cattle-system ;


# helm install rancher rancher-stable/rancher \
#   --namespace cattle-system \
#   --set hostname=rancher.rothanaheavyengineering.com \
#   --set ingress.tls.source=letsEncrypt \
#   --set letsEncrypt.email=public@noahsbwilliams.com ; 

# Using rancher-latest instead of rancher-stable since the present stable version
# of Rancher doesn't support Kubernetes v1.20+

helm install rancher rancher-latest/rancher \
  --namespace cattle-system \
  --set hostname=rancher.rothanaheavyengineering.com \
  --set ingress.tls.source=letsEncrypt \
  --set letsEncrypt.email=public@noahsbwilliams.com ; 

kubectl -n cattle-system rollout status deploy/rancher