# TW1 — Continuous Evaluation: Foundational DevOps Skills (10 Marks)

Scenario: You are a developer working on a new feature for a web application.
Primary repo for this TW: https://github.com/xzeyo/devops-flask-app
(Hello World Python Flask application — `hello.py`)

## Task 1 — Git Workflow & Collaboration (4 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 1.1 | Init repo for Flask "Hello World" app, add initial code, commit to main | 1 | ✅ DONE | `devops-flask-app`, branch `main`, commit `361ac20` "simple hello world flask application for devops lab" (2026-08-03) |
| 1.2 | Branch `feature/user-auth`, modify, commit, push branch to remote | 1.5 | ✅ DONE | Branch pushed as `features/user-auth` (plural); commit `975427c` "Added log statement when test path is called" |
| 1.3 | Simulate conflict on main (same line), merge feature branch, resolve, push main | 1.5 | ⚠️ PARTIAL | Conflict IS set up: `main` commit `5590afe` "test" adds `print("This is a test")` on the same line the branch changed to `print("Test Path Called")`. **No merge commit exists on `main`** — merge, manual resolution and push of main still pending |

Remaining work for 1.3 (on devops-flask-app):
```
git checkout main
git pull origin main
git merge features/user-auth        # will conflict in hello.py
# edit hello.py, keep desired print line, remove <<<<<<< / ======= / >>>>>>> markers
git add hello.py
git commit                          # "resolved merge conflict"
git push origin main
```

## Task 2 — Jira Project & Issue Tracking (3 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 2.1 | Create free Jira Cloud "Scrum" project for the Hello World app | 1 | ❓ NOT VERIFIABLE from git | Jira is external — needs project URL / screenshot added here |
| 2.2 | Create issues: Story "Implement User Authentication Feature", Task "Setup Flask Environment", Bug "Login Page Displays Error" | 1 | ❓ NOT VERIFIABLE from git | needs issue screenshots |
| 2.3 | Move "Setup Flask Environment" To Do → In Progress on the board | 1 | ❓ NOT VERIFIABLE from git | needs board screenshot |

## Task 3 — Basic Containerization (Docker) & Jenkins Freestyle (3 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 3.1 | Dockerfile for Flask app, minimal image, app on port 5000, build & run locally | 1.5 | ❌ NOT DONE | `devops-flask-app` contains only `hello.py` — no Dockerfile yet |
| 3.2 | Jenkins Freestyle project: pull the Git repo, build step lists workspace contents, screenshot of successful build | 1.5 | ❌ NOT DONE | no Jenkins evidence in any repo |

### Suggested Dockerfile for 3.1 (fill in after actually building)
```dockerfile
FROM python:3.12-slim
WORKDIR /app
RUN pip install --no-cache-dir flask
COPY hello.py .
EXPOSE 5000
CMD ["python", "hello.py"]
```
(Note: `hello.py` currently calls `app.run()` without host/port args — add
`app.run(host="0.0.0.0", port=5000)` so the container is reachable on port 5000.)
