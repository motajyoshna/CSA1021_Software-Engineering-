# Experiment 16 – command log

Copy the commands you actually ran (with your own username/URLs) and attach their output as screenshots.

**Open a terminal / PowerShell and verify the installation**

```bash
docker --version
docker run hello-world
```

**Create a folder for the website and open it in VS Code**

```bash
mkdir static-site
cd static-site
code .
```

**Build the image and tag it as static-site:1.0 (the dot means the current folder is the build context)**

```bash
docker build -t static-site:1.0 .
docker images
```

**Run the container in detached mode and map host port 8080 to container port 80**

```bash
docker run -d --name mysite -p 8080:80 static-site:1.0
docker ps
```

**Stop and remove the container when finished**

```bash
docker logs mysite
docker stop mysite
docker rm mysite
```
