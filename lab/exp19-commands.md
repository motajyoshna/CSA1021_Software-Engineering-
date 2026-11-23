# Experiment 19 – command log

Copy the commands you actually ran (with your own username/URLs) and attach their output as screenshots.

**Dockerfile**

```bash
git init
git add .
git commit -m "Initial Dockerized app"
git branch -M main
git remote add origin https://github.com/<username>/gha-docker-cd.git
git push -u origin main
```

**Change the message in app.py to “Version 2 …”, then commit and push**

```bash
git add app.py
git commit -m "Release version 2"
git push
```
