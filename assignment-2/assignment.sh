#!/bin/bash

# Assignment 2 - Git Branching, Feature Update, Push and Merge

# Verify the current branch and working tree status
git status
git branch

# Create and switch to a new feature branch
git checkout -b feature-update

# Verify that the new feature branch is active and the working tree is clean
git status

# Edit README.md from the assignment-2 directory
# The original workflow used:
# nvim ..\README.md
echo "# Readme File\nThis is ReadMe File for Devops Course Work\n\nCurrent Status :-\nAssignment 1 : Added" > ../README.md 

# Check the modified README.md before staging
git status

# Stage the updated README.md
git add ..\README.md

# Verify that the README.md changes are staged
git status

# Commit the README.md update
git commit -m "Updated Readme File"

# Push the feature branch to the GitHub remote
git push origin feature-update

# Switch back to the master branch
git checkout master

# Verify the master branch and working tree status
git status

# Merge the feature branch into master
git merge feature-update

