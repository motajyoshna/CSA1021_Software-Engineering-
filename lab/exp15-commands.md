# Experiment 15 – command log

Copy the commands you actually ran (with your own username/URLs) and attach their output as screenshots.

**Clone the repository using the following command**

```bash
git clone <repository_url>
```

**Navigate into the cloned repository**

```bash
cd <repository_name>
```

**Verify the repository files using**

```bash
ls
```

**Create a new feature branch using**

```bash
git checkout -b feature-update
```

**Verify the current branch**

```bash
git branch
```

**Open the repository in Visual Studio Code**

```bash
code .
```

**Check the modified files**

```bash
git status
```

**Stage the modified file**

```bash
git add README.md
```

**Commit the changes**

```bash
git commit -m "Updated README"
```

**Push the feature branch to GitHub**

```bash
git push -u origin feature-update
```

**Switch from the feature branch to the main branch**

```bash
git checkout main
```

**Verify the current branch**

```bash
git branch
```

**Get the latest changes from GitHub**

```bash
git pull origin main
```

**Switch back to the feature branch**

```bash
git checkout feature-update
```

**Verify the current branch**

```bash
git branch
```

**Merge the latest main branch changes into the feature branch**

```bash
git merge main
```

**Check the conflict status**

```bash
git status
```

**Stage the resolved file**

```bash
git add <conflicted_file>
```

**Commit the resolved merge**

```bash
git commit -m "Resolved merge conflict"
```

**Verify that the working tree is clean**

```bash
git status
```

**Push the updated feature branch to GitHub**

```bash
git push origin feature-update
```
