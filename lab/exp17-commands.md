# Experiment 17 – command log

Copy the commands you actually ran (with your own username/URLs) and attach their output as screenshots.

**Test locally (optional)**

```bash
pip install -r requirements.txt
python app.py
# open http://localhost:5000/api/students
```

**Build the image using your Docker Hub username in the name**

```bash
docker build -t <dockerhub-username>/flask-api:1.0 .
docker run -d -p 5000:5000 --name api <dockerhub-username>/flask-api:1.0
curl http://localhost:5000/api/students
docker stop api && docker rm api
```

**Log in to Docker Hub (use an access token as the password) and push the image**

```bash
docker login
docker push <dockerhub-username>/flask-api:1.0
```

**Enable Kubernetes in Docker Desktop (Settings → Kubernetes → Enable) or start Minikube**

```bash
minikube start
kubectl get nodes
```

**Step 8: Apply the Manifests**

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get deployments
kubectl get pods -o wide
kubectl get svc
```

**Minikube: get the URL with the command below and open it in the browser**

```bash
minikube service flask-api-service --url
curl http://<node-ip>:30007/api/students
```
