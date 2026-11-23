# Experiment 18: CI/CD Pipeline with Jenkins for a Containerized Application

**Tool:** Docker &nbsp;|&nbsp; **Course Outcome:** CO4 &nbsp;|&nbsp; **Course:** CSA10 Software Engineering

## Aim

To set up Jenkins and create a CI/CD pipeline that automatically builds, tests and deploys a containerized application whenever code is pushed to the repository.

## Procedure outline

1. Run Jenkins using Docker
2. Unlock and Configure Jenkins
3. Prepare the Application Repository
4. Write the Jenkinsfile
5. Create the Pipeline Job
6. Run the Pipeline
7. Verify the Deployment
8. Test Automatic Triggering

## Expected output

Jenkins dashboard shows the pipeline job flask-cicd.

Stage View shows Checkout → Build Image → Test → Deploy all green (SUCCESS).

After the Deploy stage, http://localhost:5000 displays the application; a new push triggers a new build automatically.

## GitHub deliverables (what to commit in this folder)

- [ ] the `exp18-*` project files as its own repo `jenkins-flask-demo` (app.py, test_app.py, requirements.txt, Dockerfile, Jenkinsfile)
- [ ] Screenshot of Jenkins Stage View (all green)
- [ ] Screenshot of the app at localhost:5000

> **Separate repository needed:** this experiment runs from its own repository (`jenkins-flask-demo`). Push the contents of the `exp18-*` project files as a repo of that name (GitHub Actions only reads `.github/workflows/` from the repository root). Then paste its URL into `links.md` here.

## Screenshots to capture (save in `screenshots/`)


## Links

Fill these in `links.md` before submitting.

## Result

Thus Jenkins was set up and a CI/CD pipeline was created that automatically builds, tests and deploys the containerized application.

<details><summary>Viva voce questions</summary>

**1. What is CI?**

Ans: Continuous Integration – automatically building and testing code on every commit.

**2. What is a Jenkinsfile?**

Ans: A text file containing the pipeline definition, stored with the source code (Pipeline as Code).

**3. Differentiate Continuous Delivery and Continuous Deployment.**

Ans: In Delivery the release to production needs manual approval; in Deployment it is automatic.

**4. How can Jenkins be triggered on a push?**

Ans: Using a GitHub webhook or the pollSCM trigger.

**5. What is the default port of Jenkins?**

Ans: 8080.

</details>
