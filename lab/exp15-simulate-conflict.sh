#!/usr/bin/env bash
# Reproduces Experiment 15 locally (no GitHub needed): a merge conflict in README.md
# between main and feature-update, then resolves it. Run:  bash simulate-conflict.sh
set -e
D=$(mktemp -d); cd "$D"
git init -q --bare origin.git
git clone -q origin.git work 2>/dev/null; cd work
git config user.email "student@example.com"; git config user.name "Student"
git checkout -q -b main 2>/dev/null || true
printf '# Demo Project\nVersion: 1.0\n' > README.md
git add . && git commit -q -m "Initial commit" && git push -q -u origin main
git checkout -q -b feature-update
printf '# Demo Project\nVersion: 1.1 (feature)\n' > README.md
git commit -qam "Updated README" && git push -q -u origin feature-update
git checkout -q main
printf '# Demo Project\nVersion: 2.0 (main)\n' > README.md
git commit -qam "Update README on main" && git push -q origin main
git checkout -q feature-update
echo "--- git merge main (expect a conflict) ---"
git merge main || true
git status --short
printf '# Demo Project\nVersion: 1.1 (feature) and 2.0 (main)\n' > README.md
git add README.md && git commit -q -m "Resolved merge conflict"
git push -q origin feature-update
echo "--- resolved ---"; git log --oneline --graph --all
