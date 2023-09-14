# delete service
kubectl delete svc gateway-service -n dev
kubectl delete svc account-service -n dev
kubectl delete svc cloud-config -n dev

# delete deployment
kubectl delete deploy gateway-service -n dev
kubectl delete deploy account-service -n dev
kubectl delete deploy cloud-config -n dev

# deploy service
kubectl apply -f ~/kubernetes/myBlog/cloud-config/kubernetes.yaml
kubectl apply -f ~/kubernetes/myBlog/account-service/kubernetes.yaml
kubectl apply -f ~/kubernetes/myBlog/gateway-service/kubernetes.yaml
