# Experiment 18 – command log

Copy the commands you actually ran (with your own username/URLs) and attach their output as screenshots.

**Start Jenkins LTS as a container. The Docker socket is mounted so that Jenkins can run Docker commands**

```bash
docker volume create jenkins_home
docker run -d --name jenkins -p 8080:8080 -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins/jenkins:lts
```

**Install the Docker CLI inside the Jenkins container (one time)**

```bash
docker exec -u root jenkins bash -c "apt-get update && apt-get install -y docker.io"
docker exec -u root jenkins chmod 666 /var/run/docker.sock
```

**Get the initial admin password**

```bash
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

**Open http://localhost:5000 – the message “CI/CD with Jenkins - Build successful!” is displayed.**

```bash
docker ps
curl http://localhost:5000
```
