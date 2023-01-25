# helm repo update
# helm pull  https://aws.github.io/eks-charts eks/aws-load-balancer-controller
# helm repo add eks https://aws.github.io/eks-charts
# If using IAM Roles for service account install as follows -  NOTE: you need to specify both of the chart values `serviceAccount.create=false` and `serviceAccount.name=aws-load-balancer-controller`
helm install aws-load-balancer-controller eks/aws-load-balancer-controller --set clusterName=fabriciolfj-us-east-1-dev -n kube-system --set serviceAccount.create=false --set serviceAccount.name=aws-load-balancer-controller
# If not using IAM Roles for service account
helm install aws-load-balancer-controller eks/aws-load-balancer-controller --set clusterName=my-cluster -n kube-system

# NOTE: The clusterName value must be set either via the values.yaml or the Helm command line. The <k8s-cluster-name> in the command
# below should be replaced with name of your k8s cluster before running it.
helm upgrade -i aws-load-balancer-controller eks/aws-load-balancer-controller -n kube-system --set clusterName=fabriciolfj-us-east-1-dev --set serviceAccount.create=false --set serviceAccount.name=aws-load-balancer-controller