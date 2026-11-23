# Experiment 17: Flask API Containerized with Docker, Pushed to Docker Hub and Deployed on Kubernetes

**Tool:** Docker & Kubernetes &nbsp;|&nbsp; **Course Outcome:** CO3 &nbsp;|&nbsp; **Course:** CSA10 Software Engineering

## Aim

To create a simple Python Flask API, containerize it with Docker, push the image to Docker Hub and deploy it on Kubernetes using Deployment and Service (NodePort) manifests.

## Procedure outline

1. Create the Flask API (app.py)
2. Containerize the Flask App
3. Build and Test the Image
4. Push the Image to Docker Hub
5. Start the Kubernetes Cluster
6. Create the Deployment Manifest
7. Create the Service Manifest (NodePort)
8. Apply the Manifests
9. Access the API via NodePort

## Expected output

Image <dockerhub-username>/flask-api:1.0 pushed to Docker Hub.

kubectl get pods shows 2 pods in Running state; kubectl get svc shows flask-api-service of type NodePort 5000:30007/TCP.

http://localhost:30007/ returns {"message": "Hello from Flask API on Kubernetes"} and /api/students returns the JSON list.

## GitHub deliverables (what to commit in this folder)

- [ ] the `exp17-*` project files (app.py, requirements.txt, Dockerfile, deployment.yaml, service.yaml)
- [ ] Docker Hub repository link/screenshot
- [ ] Screenshots: `kubectl get pods`, `kubectl get svc`, browser at localhost:30007

## Screenshots to capture (save in `screenshots/`)


## Links

Fill these in `links.md` before submitting.

## Result

Thus a Flask API was containerized with Docker, pushed to Docker Hub and deployed on Kubernetes, and the API was accessed successfully through the NodePort service.

<details><summary>Viva voce questions</summary>

**1. What is a Pod?**

Ans: The smallest deployable unit in Kubernetes, wrapping one or more containers.

**2. What is the NodePort range?**

Ans: 30000 to 32767.

**3. What is the role of the selector in a Service?**

Ans: It selects the pods (by label) to which traffic is sent.

**4. Why must Flask listen on 0.0.0.0 inside a container?**

Ans: So that it accepts connections from outside the container, not only from localhost.

**5. What does kubectl apply -f do?**

Ans: Creates or updates resources declared in the given manifest file.

</details>
