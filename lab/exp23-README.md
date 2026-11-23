# Experiment 23: Multi-Container Application (Frontend, Backend, Database) on Kubernetes with Scaling

**Tool:** Docker, Kubernetes &nbsp;|&nbsp; **Course Outcome:** CO3 &nbsp;|&nbsp; **Course:** CSA10 Software Engineering

## Aim

To deploy a multi-container application consisting of a frontend, a backend API and a database on Kubernetes using YAML files, monitor pods and services, and scale the frontend to handle increased load.

## Procedure outline

1. Start the Cluster and Create a Namespace
2. Create the Backend and Frontend Images
3. Define the Database (Secret, ConfigMap, PVC, Deployment, Service)
4. Define the Backend Deployment and Service
5. Define the Frontend Deployment and Service
6. Deploy the Application using kubectl
7. Access and Monitor the Application
8. Scale the Frontend

## Expected output

kubectl get all shows the mysql, backend and frontend deployments and services in Running state.

The frontend opens through the NodePort and displays data fetched from the backend, which reads from MySQL.

After kubectl scale deployment frontend --replicas=4, four frontend pods are Running; the Dashboard shows the updated deployment.

## GitHub deliverables (what to commit in this folder)

- [ ] the `exp23-*` project files (backend/, frontend/, mysql.yaml, backend.yaml, frontend.yaml)
- [ ] Screenshots: `kubectl get all -n multiapp`, app in browser, 4 frontend replicas, Dashboard

## Screenshots to capture (save in `screenshots/`)


## Links

Fill these in `links.md` before submitting.

## Result

Thus a multi-container application with frontend, backend and database was deployed on Kubernetes, its pods and services were monitored, and the frontend was scaled to handle increased load.

<details><summary>Viva voce questions</summary>

**1. How do pods of different tiers find each other?**

Ans: Through Kubernetes Services and cluster DNS names.

**2. What is a Secret?**

Ans: An object that stores sensitive data such as passwords in base64-encoded form.

**3. What is a PersistentVolumeClaim?**

Ans: A request for storage that keeps data even when the pod restarts.

**4. Differentiate manual scaling and HPA.**

Ans: Manual scaling uses kubectl scale; HPA scales automatically based on metrics like CPU.

**5. Which service type is used for the database?**

Ans: ClusterIP, since it should be reachable only inside the cluster.

</details>
