# Experiment 22 – command log

Copy the commands you actually ran (with your own username/URLs) and attach their output as screenshots.

**Step 2: Build the Docker Image**

```bash
docker build -t static-web .
docker images
```

**Step 4: Log in from the Docker CLI**

```bash
docker login -u <dockerhub-username>
# enter the access token as password
# Login Succeeded
```

**Tag the local image with the Docker Hub username, repository name and version**

```bash
docker tag static-web <dockerhub-username>/static-web:1.0
docker tag static-web <dockerhub-username>/static-web:latest
docker images
```

**Step 6: Push the Image to Docker Hub**

```bash
docker push <dockerhub-username>/static-web:1.0
docker push <dockerhub-username>/static-web:latest
```

**On a second computer with Docker (or open https://labs.play-with-docker.com → Add new instance), run**

```bash
docker pull <dockerhub-username>/static-web:1.0
docker images
```

**Step 8: Run the Pulled Image**

```bash
docker run -d --name web -p 8080:80 <dockerhub-username>/static-web:1.0
docker ps
curl http://localhost:8080
```
