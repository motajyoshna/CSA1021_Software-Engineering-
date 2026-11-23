# Experiment 21 – command log

Copy the commands you actually ran (with your own username/URLs) and attach their output as screenshots.

**Step 3: Build the Docker Image**

```bash
docker build -t todo-app:1.0 .
docker images todo-app
```

**Step 4: Run the Container Locally**

```bash
docker run -d --name todo -p 5000:5000 todo-app:1.0
docker ps
```

**Test the JSON endpoint from the host and from inside the container**

```bash
curl http://localhost:5000/api/tasks
docker exec -it todo python -c "import urllib.request;print(urllib.request.urlopen('http://localhost:5000/api/tasks').read())"
docker logs todo
```

**Step 6: Push the Image to Docker Hub**

```bash
docker login
docker tag todo-app:1.0 <dockerhub-username>/todo-app:1.0
docker push <dockerhub-username>/todo-app:1.0
```

**Step 7: Clean Up**

```bash
docker stop todo
docker rm todo
```
