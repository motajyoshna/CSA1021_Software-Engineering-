# Experiment 16: Static Website Containerized and Served with Docker and Nginx

**Tool:** Docker &nbsp;|&nbsp; **Course Outcome:** CO3 &nbsp;|&nbsp; **Course:** CSA10 Software Engineering

## Aim

To create a simple static website, write a Dockerfile that serves it with Nginx, build the Docker image, run the container and access the website from a browser.

## Procedure outline

1. Install and Verify Docker
2. Create the Project Folder
3. Create the Static Website (index.html)
4. Write the Dockerfile
5. Build the Docker Image
6. Run the Container
7. Access the Website in a Browser
8. Update, Stop and Clean Up

## Expected output

Image static-site:1.0 is built successfully.

docker ps shows the container running with 0.0.0.0:8080->80/tcp.

http://localhost:8080 displays the “Welcome to My Static Website” page.

## GitHub deliverables (what to commit in this folder)

- [ ] the `exp16-*` project files (index.html, style.css, Dockerfile)
- [ ] Screenshots: `docker build`, `docker ps`, browser at localhost:8080

## Screenshots to capture (save in `screenshots/`)


## Links

Fill these in `links.md` before submitting.

## Result

Thus a static website was created, containerized with a Dockerfile using Nginx, built into an image, run as a container and accessed successfully in a browser.

<details><summary>Viva voce questions</summary>

**1. What is the difference between an image and a container?**

Ans: An image is a read-only template; a container is a running instance of that image.

**2. What does the EXPOSE instruction do?**

Ans: Documents the port on which the container listens; publishing is done with -p.

**3. What is the purpose of -d in docker run?**

Ans: Runs the container in detached (background) mode.

**4. Where does Nginx serve static files from in the official image?**

Ans: /usr/share/nginx/html.

**5. Why is alpine used as the base?**

Ans: It is a very small Linux distribution, giving a small and secure image.

</details>
