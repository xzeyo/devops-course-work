# TW3 — ESE Lab Exam + Project Evaluation + Viva (30 Marks)

Comprehensive assessment: practical lab work + project implementation + viva-voce.

## A. ESE Lab Exam (10 Marks)

Scenario: fully functional CI/CD pipeline for a multi-service application
(frontend, backend, database), built from scratch.

| Requirement | Status | Evidence |
|-------------|--------|----------|
| Git repo + basic branching strategy | ✅ demonstrated | `devops-course-work` (feature branches + merge, commits `b73b5f7`, merge `b0aeb97`) and `devops-flask-app` (`features/user-auth`) |
| Jira issue tracking for the deployment | ❓ not verifiable | Jira external — needs project/screenshot |
| Jenkins pipeline: pull → build images → push registry → deploy to k8s | ❌ not done as Jenkins | closest existing equivalent is `devops-ca2`'s GitHub Actions pipeline (`.github/workflows/deploy.yml`, build + deploy on self-hosted runner) — not Jenkins |
| Expose services via Kubernetes Services | 🟡 steps documented | `devops-lab-ex` README (2026-10-26): Deployment (2 replicas) + NodePort Service + verify + rollback steps |
| Optional Terraform infra component | ❌ not done | no Terraform files yet |

Rubric: Problem Solving 5 · Accuracy & Efficiency 3 · Troubleshooting 2.

## B. Project Evaluation (10 Marks)

Requirement: small-scale project integrating 4–5 core DevOps tools.

Mapped against https://github.com/xzeyo/devops-ca2 (CA-II project, "hello-service"):

| Required tool | Status in devops-ca2 |
|---------------|----------------------|
| Git | ✅ full history |
| Jira | ❓ not evidenced in repo |
| CI/CD (Jenkins per assessment) | 🟡 implemented with **GitHub Actions** instead of Jenkins |
| Docker | ✅ `Dockerfile`, `Dockerfile.local`, `.dockerignore` |
| Kubernetes | ✅ `k8s/deployment.yaml`, `k8s/service.yaml` + live rollout/rollback evidence (`screenshots/live/*`) |
| Terraform | ❌ absent |
| Prometheus/Grafana monitoring (optional, higher score) | ✅ `k8s/servicemonitor.yaml`, `k8s/grafana-dashboard.json`, `screenshots/task4/*` |
| Ansible | ✅ `ansible/inventory.ini`, `ansible/playbook.yml` + idempotency evidence (`run1_apply.txt`, `run2_idempotent.txt`) |

Gap list for full TW3-B alignment: swap/add a Jenkins pipeline (or argue Actions
equivalence in viva), add a small Terraform component, add Jira evidence.

Rubric: Design & Architecture 3 · Functionality & Completeness 3 · Code Quality 2 · Documentation & Presentation 2.

## C. Viva (10 Marks)

Concepts to be fluent in (all already used hands-on):
- Git branching/merging/conflict resolution (done twice: `devops-course-work`, `devops-flask-app`)
- Containerization & images (`Dockerfile` in devops-ca2)
- Orchestration: Deployments, replicas, NodePort Services, rollout/undo (`devops-lab-ex` steps + ca2 evidence)
- IaC vs config management: Ansible (done) vs Terraform (pending — read up on `local_file` resource)
- CI/CD: GitHub Actions pipeline (done) vs Jenkins declarative pipeline (pending — know `pipeline { agent any; stages {…} }` structure)

Rubric: Understanding of Concepts 4 · Problem-Solving & Critical Thinking 3 · Clarity & Communication 3.
