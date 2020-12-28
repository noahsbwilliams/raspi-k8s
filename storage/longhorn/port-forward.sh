# The following command forwards port 80 on your local machine
# (or whatever you're running kubectl on) to the Longhorn
# frontend GUI, so you can access it without having to
# create an ingress.

kubectl port-forward service/longhorn-frontend 8080:80 -n longhorn-system