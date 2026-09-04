#!/bin/bash

# Assignment 1 - Basic Git Repo Setup and Workflow

# Clone Repo and Change Dir
git clone https://github.com/xzeyo/devops-course-work
cd devops-course-work

# Create Readme File
echo "#Readme File\nThis is a example readme file for this repo" > README.md

# Stage file
git add README.md

# Commit the staged changes and verify
git commit -m "initial readme.md added"
git status

# Push file to remote github repo
git push origin master

