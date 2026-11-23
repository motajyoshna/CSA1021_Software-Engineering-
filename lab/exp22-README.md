# Experiment 22: Push and Pull Docker Images using Docker Hub

**Tool:** Docker Hub, Docker CLI &nbsp;|&nbsp; **Course Outcome:** CO3 &nbsp;|&nbsp; **Course:** CSA10 Software Engineering

## Aim

To create a Docker image for a static HTML website, tag and push it to Docker Hub, then pull the image on another machine and run it.

## Procedure outline

1. Create the Static Website
2. Build the Docker Image
3. Create a Repository on Docker Hub
4. Log in from the Docker CLI
5. Tag the Image
6. Push the Image to Docker Hub
7. Pull the Image on Another Machine
8. Run the Pulled Image

## Expected output

Image <dockerhub-username>/static-web:1.0 visible in the Docker Hub repository with its tag and size.

On the second machine docker pull downloads the image and docker run -d -p 8080:80 starts it.

The website opens on port 8080 of the second machine.

## GitHub deliverables (what to commit in this folder)

- [ ] the `exp22-*` project files (index.html, Dockerfile)
- [ ] Screenshot of the Docker Hub repository with tag and size
- [ ] Screenshots of `docker pull` + `docker run` on the second machine

## Screenshots to capture (save in `screenshots/`)


## Links

Fill these in `links.md` before submitting.

## Result

Thus a Docker image of a static website was built, tagged and pushed to Docker Hub, and then pulled and run successfully on another machine.

<details><summary>Viva voce questions</summary>

**1. What is Docker Hub?**

Ans: A cloud registry for storing and sharing Docker images.

**2. What is the default tag of an image?**

Ans: latest.

**3. Why is docker tag needed before push?**

Ans: The image name must include the Docker Hub username/repository to be pushed there.

**4. What is an access token in Docker Hub?**

Ans: A revocable credential used instead of the password for docker login.

**5. How do you make a Docker Hub repository private?**

Ans: Repository Settings → Visibility → Private.

</details>
