# 既存のjobを削除
kubectl delete job pi

kubectl apply -f

#podの実行詳細を取得する
kubectl get pods <pod-name> -o yaml

#jobのpod情報取得
pods=$(kubectl get pods --selector=job-name=pi --output=jsonpath={.items[*].metadata.name})
kubectl logs $pods


kubectl expose deployment postgres --type=LoadBalancer --name=postgres-service
kubectl expose deployment flask-cache  --type=LoadBalancer --port=8080
kubectl expose deployment hello-minikube1  --type=LoadBalancer --port=8080

# create a template
kubectl create job hello-3 --from=cronjob/hello --dry-run=client -o yaml > hello.yaml
kubectl create job hello-3 --from=cronjob/hello --dry-run -o yaml > hello.yaml

kubectl create deployment hello-minikube1 --image=k8s.gcr.io/echoserver:1.4

kubectl create deployment spring-boot-ap-dp --image spring-boot-ap:latest -o yaml --dry-run=client > spring-boot.yaml


$ kubectl create service clusterip spring-boot-ap-dp --tcp 80:8080 -o yaml --dry-run=client > service/service.yaml

eval $(minikube -p minikube docker-env)

kubectl port-forward svc/spring-boot-ap-dp 9090:80
