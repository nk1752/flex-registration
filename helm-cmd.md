# install helm
brew install helm
choco install kubernetes-helm

# add 3rd party chart
helm repo add <name> <url> <flags>

# creates helm chart file structure
helm create <chart-name>

# install helm chart
helm install <chart-release-name> <chart-name> -n <namespace>

# upgrade
helm upgrade <chart-release-name> <chart-name> -n <namespace> --values claims-chart/values.yaml 

# rollback
helm rollback <chart-release-name> <chart-name> -n <namespace>

# delete
helm delete <chart-release-name> <chart-name> -n <namespace>

# preview
helm upgrade claims-release claims-chart -n helm-ns --values claims-chart/values.yaml --dry-run --debug

# **** flex *****

helm upgrade -n flex-gateway-ns flex-release flex-gateway/flex-gateway \
  -i --wait --create-namespace \
  --set-file registration.content=registration.yaml
helm -n gateway-ns upgrade -i --create-namespace --wait ingress flex-gateway/flex-gateway \
  --set-file registration.content=registration-2/registration.yaml \
  --set gateway.mode=connected \
  --set podSecurityContext.runAsUser=1000660010 \
  --set podSecurityContext.runAsNonRoot=true \
  --debug
# helm upgrade [RELEASE] [CHART] [flags]
helm upgrade ingress flex-gateway/flex-gateway -i --wait \
-n gw-ns --create-namespace \
--set gateway.mode=connected \
--set-file registration.content=registration-2/registration.yaml \
--debug