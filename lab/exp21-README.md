# Experiment 21: Containerizing a Python Flask To-Do Application using Docker

**Tool:** Docker, Flask &nbsp;|&nbsp; **Course Outcome:** CO3 &nbsp;|&nbsp; **Course:** CSA10 Software Engineering

## Aim

To write a simple Python Flask To-Do list application, containerize it with a Dockerfile, build and run it locally, test its functionality inside the container and push the image to Docker Hub.

## Procedure outline

1. Create the Flask To-Do Application
2. Create the Dockerfile
3. Build the Docker Image
4. Run the Container Locally
5. Test the Application Functionality
6. Push the Image to Docker Hub
7. Clean Up

## Expected output

Image todo-app:1.0 built; container todo running on port 5000.

http://localhost:5000 shows the To-Do list; tasks can be added and deleted.

Image pushed as <dockerhub-username>/todo-app:1.0 and visible on Docker Hub.

## GitHub deliverables (what to commit in this folder)

- [ ] the `exp21-*` project files (app.py, templates/index.html, requirements.txt, Dockerfile)
- [ ] Screenshots: `docker build`, `docker ps`, app in browser, Docker Hub page

## Screenshots to capture (save in `screenshots/`)


## Links

Fill these in `links.md` before submitting.

## Result

Thus a Flask To-Do application was containerized using Docker, tested inside the container and the image was pushed to Docker Hub.

<details><summary>Viva voce questions</summary>

**1. Why is requirements.txt copied before the source code?**

Ans: To use Docker layer caching – dependencies are reinstalled only when requirements change.

**2. What does docker exec -it do?**

Ans: Runs an interactive command inside a running container.

**3. How do you view the logs of a container?**

Ans: docker logs <container>.

**4. What is a .dockerignore file?**

Ans: A file listing paths to exclude from the build context.

**5. Why use python:3.11-slim?**

Ans: It is a smaller base image, giving faster builds and a smaller attack surface.

</details>
