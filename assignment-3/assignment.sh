#!/bin/bash

# Assignment 3 - Git Feature Branching, Merge Conflict Resolution and Push

# Verify the current branch and working tree status
git status
git branch

# Create and switch to a new feature branch
git checkout -b conflict-feature

# Verify that the new feature branch is active and the working tree is clean
git status

# Edit README.md on the conflict-feature branch
# The original workflow used:
# nvim .\README.md
echo "# Readme File
This is ReadMe File for Devops Course Work

Current Status :-
Assignment 1 : Added
Assignment 2 : Added
Assignment 3 : WIP" > .\README.md

# Stage the updated README.md
git add .\README.md

# Commit the README.md update on the feature branch
git commit -m "Updated README on feature branch"

# Switch back to the master branch
git checkout master

# Edit README.md independently on the master branch
# The original workflow used:
# nvim .\README.md
echo "# Readme File
This is ReadMe File for Devops Course Work

Current Status :-
Assignment 1 : Added
Assignment 2 : Added
Assignment 3 : Added" > .\README.md

# Stage the updated README.md
git add .\README.md

# Commit the README.md update on master
git commit -m "Updated README on master"

# Merge the feature branch into master
git merge conflict-feature

# Verify the conflict via git status
git status

# Inspect the conflicting file
cat .\README.md

# Resolve the conflict by rewriting README.md with the final, merged content
# The original workflow used:
# nvim .\README.md
echo "# Readme File
This is ReadMe File for Devops Course Work

Current Status :-
Assignment 1 : Added
Assignment 2 : Added
Assignment 3 : Added" > .\README.md

# Confirm the conflict markers are gone
cat .\README.md

# Stage the resolved file
git add .

# Commit the merge conflict resolution
git commit -m "fixed merge conflict"

# Push the merged master branch to the GitHub remote
git push origin master
