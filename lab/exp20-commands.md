# Experiment 20 – command log

Copy the commands you actually ran (with your own username/URLs) and attach their output as screenshots.

**Step 2: Clone the Repository (each member)**

```bash
git clone https://github.com/<team-lead>/team-project.git
cd team-project
git branch -a
```

**Each member creates a branch for the module assigned to them**

```bash
git checkout -b feature-login      # Student 1
git checkout -b feature-catalog    # Student 2
git checkout -b feature-cart       # Student 3
```

**login.py**

```bash
git add login.py
git commit -m "Add login module"
git push -u origin feature-login
```

**Resolve it locally**

```bash
git checkout feature-cart
git pull origin main
# README.md now contains:
<<<<<<< HEAD
Modules: Login, Cart
=======
Modules: Login, Catalog
>>>>>>> main
```

**Edit the file to keep both changes (Modules: Login, Catalog, Cart), remove the markers, then**

```bash
git add README.md
git commit -m "Resolve README merge conflict"
git push
```
