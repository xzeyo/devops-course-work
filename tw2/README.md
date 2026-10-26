# TW2 — Continuous Evaluation: Advanced DevOps Practices (10 Marks)

Scenario: Enhance the "Hello World" app with a database and deploy with orchestration tools.
Base app: https://github.com/xzeyo/devops-flask-app

## Task 1 — Docker Compose for Multi-Container App (3 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 1.1 | Modify Flask app to connect to + store an entry in PostgreSQL | 1 | ❌ NOT DONE | `hello.py` has no DB code |
| 1.2 | `docker-compose.yml` with Flask + Postgres services, bring up, verify communication | 2 | ❌ NOT DONE | no compose file in any repo |

## Task 2 — Kubernetes Deployment & Service (4 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 2.1 | Make the Docker image accessible (Docker Hub push or Minikube daemon) | 1 | ❌ NOT DONE | no image built/pushed for the flask app yet |
| 2.2 | Kubernetes Deployment YAML, deploy to local cluster (Minikube/Kind), verify pods | 1.5 | 🟡 STEPS DOCUMENTED | `devops-lab-ex` README (pushed 2026-10-26) documents a full `Deployment` manifest with `replicas: 2` + verify steps — but as README text, not as an applied YAML file for the flask app |
| 2.3 | Kubernetes Service YAML (NodePort/LoadBalancer) to expose app + access command | 1.5 | 🟡 STEPS DOCUMENTED | same `devops-lab-ex` README documents a NodePort Service + `minikube service` / node:nodeport access — again docs only, not applied to the flask app |

## Task 3 — Integrated CI/CD (Jenkins) & Basic IaC (3 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 3.1 | Jenkins Declarative Pipeline: checkout → docker build → (recommended) push to registry | 2 | ❌ NOT DONE | no Jenkinsfile anywhere; note `devops-ca2` has an equivalent CI/CD pipeline but with GitHub Actions, not Jenkins |
| 3.2 | Install Terraform; `main.tf` writes a local file; init/plan/apply; show plan output | 1 | ❌ NOT DONE | no Terraform files in any repo |

### Notes for finishing TW2
- Do 1.1 → 1.2 first: `docker-compose.yml` with `web` (flask) + `db` (postgres:16-alpine), `web` env `DATABASE_URL`, then `docker compose up -d` and curl the app.
- For 2.2/2.3 the `devops-lab-ex` README steps can be reused almost verbatim against the flask image — just commit the actual `deployment.yaml` / `service.yaml` files and `kubectl get pods` output as evidence.
- 3.2 is quick: a `main.tf` using the `local_file` resource, then `terraform init && terraform plan && terraform apply`.
