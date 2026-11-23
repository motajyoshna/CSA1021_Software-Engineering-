# Experiment 15: Working with Git Branches and Resolving Merge Conflicts

**Tool:** Git/GitHub &nbsp;|&nbsp; **Course Outcome:** CO3 &nbsp;|&nbsp; **Course:** CSA10 Software Engineering

## Aim

To work with Git branches while collaborating, merge the main branch into a feature branch, resolve merge conflicts manually, and push the result to GitHub with a pull request.

## Procedure outline

1. Clone the Shared Repository
2. Create and Switch to a New Branch
3. Make Changes to a File
4. Check and Commit the Changes
5. Push the Feature Branch
6. Switch to the Main Branch
7. Pull the Latest Changes from the Main Branch
8. Switch Back to the Feature Branch
9. Merge the Main Branch into the Feature Branch
10. Resolve the Merge Conflict
11. Mark the Conflict as Resolved and Commit
12. Push the Merged Feature Branch
13. Verify the Pull Request

## Expected output

Feature branch feature-update created and pushed.

Merging main into feature-update shows CONFLICT (content): Merge conflict in README.md.

Conflict resolved, committed as “Resolved merge conflict”, pushed, and a pull request created from feature-update to main.

## GitHub deliverables (what to commit in this folder)

- [ ] Repository URL
- [ ] Screenshot of the `CONFLICT (content)` message
- [ ] Screenshot of the resolved file and the merge commit
- [ ] Pull-request URL
- [ ] `exp15-simulate-conflict.sh` (included; reproduces the conflict locally)

## Links

Fill these in `links.md` before submitting.

## Result

Thus Git branches were used for collaboration, the merge conflict between the feature and main branches was resolved manually, and the merged feature branch was pushed with a pull request.

<details><summary>Viva voce questions</summary>

**1. When does a merge conflict occur?**

Ans: When the same part of a file is changed differently in the two branches being merged.

**2. What do ****<****<****<****<****<****<****<****, ======= and ****>****>****>****>****>****>****>**** indicate?**

Ans: The start of the current-branch change, the separator, and the end of the incoming change.

**3. How do you abort a merge?**

Ans: git merge --abort.

**4. Differentiate git fetch and git pull.**

Ans: fetch downloads changes only; pull = fetch + merge.

**5. What is a fast-forward merge?**

Ans: A merge where the branch pointer just moves forward because there are no divergent commits.

</details>
