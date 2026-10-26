# TW2 — Continuous Evaluation: Advanced DevOps Practices (10 Marks)

Scenario: Enhance the "Hello World" app with a database and deploy it with orchestration tools.
Base app: https://github.com/xzeyo/devops-flask-app

Executed for real on the lab box (Docker 26.1.5 + compose v2, Jenkins 2.580.1 LTS,
kind v0.25.0 with Kubernetes v1.31.2, Terraform 1.9.8) on 2026-10-26.
Raw evidence logs: [../evidence/](../evidence/)

## Task 1 — Docker Compose for Multi-Container App (3 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 1.1 | Modify Flask app to connect to + store an entry in PostgreSQL | 1 | ✅ DONE | `hello.py` gained a `/visits` route + `DATABASE_URL` support (psycopg2), commits `a397d78` + `0136271` |
| 1.2 | `docker-compose.yml` (Flask + Postgres), bring up, verify communication | 2 | ✅ DONE | `docker-compose.yml` with `web` (build) + `db` (`postgres:16-alpine`, healthcheck-gated `depends_on`). `docker compose up -d` → db healthy; `curl /visits` → `Stored entry #1 in PostgreSQL.`, second call → `#2`; `docker compose ps` shows both Up. Log: [../evidence/tw2-compose.log](../evidence/tw2-compose.log) |

## Task 2 — Kubernetes Deployment & Service (4 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 2.1 | Make the Docker image accessible to the cluster | 1 | ✅ DONE | The task allows using the local cluster's image store in place of a registry push [1]; the locally built image was injected with `kind load docker-image devops-flask-app:1.0 --name devops-lab` ("not yet present on node devops-lab-control-plane, loading...") |
| 2.2 | Kubernetes Deployment YAML, deploy to local cluster, verify pods | 1.5 | ✅ DONE | `k8s/deployment.yaml` (2 replicas) applied to the kind cluster `devops-lab` (k8s v1.31.2); `rollout status` → "successfully rolled out"; both pods `1/1 Running` |
| 2.3 | Kubernetes Service YAML to expose app + access command | 1.5 | ✅ DONE | `k8s/service.yaml` — NodePort Service `5000:30080/TCP`; kind `extraPortMappings` maps host 30080 → node 30080, so from the host: `curl http://localhost:30080/` → `Hello World!` |

Full log: [../evidence/tw2-k8s.log](../evidence/tw2-k8s.log)

## Task 3 — Integrated CI/CD (Jenkins) & Basic IaC (3 Marks)

| # | Task | Marks | Status | Evidence |
|---|------|-------|--------|----------|
| 3.1 | Jenkins Declarative Pipeline: checkout → docker build → (optional) push | 2 | ✅ DONE (checkout + build; push skipped — no registry creds on the lab) | `Jenkinsfile` in `devops-flask-app`; pipeline job **`tw2-declarative-pipeline`** build #1 → **SUCCESS**: Checkout (git `*/main`) → `docker build -t devops-flask-app:pipeline-1` → `docker image ls` verify (image visible). Console: [../evidence/tw2-jenkins-pipeline-console.log](../evidence/tw2-jenkins-pipeline-console.log) |
| 3.2 | Terraform `main.tf` creates a local file; init/plan/apply; show plan + verify | 1 | ✅ DONE | `terraform/main.tf` (`local_file` resource → `output.txt`); `terraform init` ✓, `plan` → "1 to add, 0 to change, 0 to destroy", `apply` → "Apply complete! Resources: 1 added"; `output.txt` verified. Log: [../evidence/tw2-terraform.log](../evidence/tw2-terraform.log) |

Manifests as committed: [k8s/](https://github.com/xzeyo/devops-flask-app/tree/main/k8s), [Jenkinsfile](https://github.com/xzeyo/devops-flask-app/blob/main/Jenkinsfile), [terraform/main.tf](https://github.com/xzeyo/devops-flask-app/tree/main/terraform)
