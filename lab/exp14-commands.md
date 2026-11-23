# Experiment 14 – command log

Copy the commands you actually ran (with your own username/URLs) and attach their output as screenshots.

**Navigate to the project directory using the cd command.**

```bash
git clone https://github.com/<your-username>/first-contributions.git
cd first-contributions
```

**Switch to the newly created branch before making any changes.**

```bash
git checkout -b update-readme
git branch
```

**Push the feature branch to the forked GitHub repository using the git push command.**

```bash
git status
git add README.md
git commit -m "Updated README for collaboration experiment"
git push -u origin update-readme
```

**Verify that the pull request is updated automatically.**

```bash
git add .
git commit -m "Addressed review comments"
git push
```
