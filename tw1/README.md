# TW1 — Continuous Evaluation: Foundational DevOps Skills (10 Marks)

Scenario: You are a developer working on a new feature for a web application.
Primary repo for this TW: https://github.com/xzeyo/devops-flask-app
(Hello World Python Flask application — `hello.py`)

Executed for real on the lab box (Docker 26.1.5, Jenkins 2.580.1 LTS) on 2026-10-26.
Raw evidence logs: [../evidence/](../evidence/)

## Task 1 — Git Workflow & Collaboration (4 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 1.1 | Init repo for Flask "Hello World" app, add initial code, commit to main | 1 | ✅ DONE | `devops-flask-app`, branch `main`, commit `361ac20` "simple hello world flask application for devops lab" (2026-08-03) |
| 1.2 | Branch `feature/user-auth`, modify, commit, push branch to remote | 1.5 | ✅ DONE | Branch pushed as `features/user-auth` (plural); commit `975427c` "Added log statement when test path is called" |
| 1.3 | Simulate conflict on main (same line), merge feature branch, resolve, push main | 1.5 | ✅ DONE | Conflict set up on `main` @ `5590afe` "test" (`print("This is a test")`) vs branch `975427c` (`print("Test Path Called")`); merge produced a real conflict (`CONFLICT (content): hello.py`), resolved keeping the feature branch's line, merge commit `2dd5ed8` "resolved merge conflict in hello.py" pushed to `main` (2026-10-26) |

Resolution note (viva-ready): both branches added a `print()` inside `hello()` at the same
spot, so git reported `UU hello.py`. Resolution kept the feature branch's line
(`print("Test Path Called")`) since `main`'s `print("This is a test")` (commit `5590afe`,
message "test") was the simulated conflicting change. Final graph: merge commit `2dd5ed8`
has two parents (`5590afe` + `975427c`).

## Task 2 — Jira Project & Issue Tracking (3 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 2.1 | Create free Jira Cloud "Scrum" project for the Hello World app | 1 | ❓ NOT VERIFIABLE from git | Jira is external — needs project URL / screenshot added here |
| 2.2 | Create issues: Story "Implement User Authentication Feature", Task "Setup Flask Environment", Bug "Login Page Displays Error" | 1 | ❓ NOT VERIFIABLE from git | needs issue screenshots |
| 2.3 | Move "Setup Flask Environment" To Do → In Progress on the board | 1 | ❓ NOT VERIFIABLE from git | needs board screenshot |

## Task 3 — Basic Containerization (Docker) & Jenkins Freestyle (3 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 3.1 | Dockerfile for Flask app, minimal image, app on port 5000, build & run locally | 1.5 | ✅ DONE | `Dockerfile` committed (a397d78): `python:3.12-slim`, `EXPOSE 5000`, `CMD python hello.py` with `host="0.0.0.0", port=5000`. Image `devops-flask-app:1.0` built (sha256:2e759e48…), container `hello-tw1` run with `-p 5000:5000`, `curl localhost:5000/` → `Hello World!`; container log shows `Test Path Called` print + `200 GET` |
| 3.2 | Jenkins Freestyle project: pull the Git repo, build step lists workspace contents, successful build output | 1.5 | ✅ DONE | Freestyle job **`tw1-freestyle-helloworld`** on the lab Jenkins (2.580.1): Git SCM `*/main` of `devops-flask-app`, execute-shell step lists workspace + first lines of hello.py. Build #1 → **SUCCESS** (2026-10-26). Console: [../evidence/tw1-jenkins-freestyle-console.log](../evidence/tw1-jenkins-freestyle-console.log) |

Dockerfile as committed: [Dockerfile in devops-flask-app](https://github.com/xzeyo/devops-flask-app/blob/main/Dockerfile)

Raw evidence: [../evidence/tw1-docker-build-run.log](../evidence/tw1-docker-build-run.log), [../evidence/tw1-container-run.log](../evidence/tw1-container-run.log)
