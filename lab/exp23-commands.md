# Experiment 23 – command log

Copy the commands you actually ran (with your own username/URLs) and attach their output as screenshots.

**Step 1: Start the Cluster and Create a Namespace**

```bash
minikube start --cpus=2 --memory=4096
minikube addons enable metrics-server
kubectl create namespace multiapp
kubectl config set-context --current --namespace=multiapp
```

**Build and push both images**

```bash
docker build -t <dockerhub-username>/k8s-backend:1.0 backend
docker build -t <dockerhub-username>/k8s-frontend:1.0 frontend
docker push <dockerhub-username>/k8s-backend:1.0
docker push <dockerhub-username>/k8s-frontend:1.0
```

**Step 6: Deploy the Application using kubectl**

```bash
kubectl apply -f mysql.yaml
kubectl apply -f backend.yaml
kubectl apply -f frontend.yaml
kubectl get all
```

**Step 7: Access and Monitor the Application**

```bash
minikube service frontend-service -n multiapp --url
kubectl get pods -o wide
kubectl get svc
kubectl describe deployment frontend
kubectl logs deploy/backend
minikube dashboard
```

**Manual scaling to handle increased load**

```bash
kubectl scale deployment frontend --replicas=4
kubectl get pods -l app=frontend
```

**Automatic scaling using a Horizontal Pod Autoscaler (optional)**

```bash
kubectl autoscale deployment frontend --cpu-percent=50 --min=2 --max=6
kubectl get hpa
```
