# 既存のjobを削除
kubectl delete job pi

kubectl apply -f

#podの実行詳細を取得する
kubectl get pods <pod-name> -o yaml

#jobのpod情報取得
pods=$(kubectl get pods --selector=job-name=pi --output=jsonpath={.items[*].metadata.name})
kubectl logs $pods

