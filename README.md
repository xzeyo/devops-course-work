# Readme File
### This is ReadMe File for Devops Course Work

# Current Status :-
- Assignment 1 : Added
- Assignment 2 : Added
- Assignment 3 : Added

# DevOps Lab Assessment (TW1 / TW2 / TW3)
Full question paper: [docs/devops-lab-assessment.md](docs/devops-lab-assessment.md)

- TW1 — Foundational DevOps Skills (10 Marks): [tw1/README.md](tw1/README.md)
- TW2 — Advanced DevOps Practices (10 Marks): [tw2/README.md](tw2/README.md)
- TW3 — ESE Lab Exam + Project + Viva (30 Marks): [tw3/README.md](tw3/README.md)

Execution note: TW1 Tasks 1.x + 3.x and all of TW2 were **executed for real** on the lab box
on 2026-10-26 (Docker 26.1.5, Jenkins 2.580.1 LTS, kind v0.25.0 / Kubernetes v1.31.2,
Terraform 1.9.8). Raw command output lives in [evidence/](evidence/). Jira tasks remain
external (❓) — they require the Jira Cloud account itself.

## Verification summary (evidence-based)

Legend: ✅ verified done · 🟡 documented but no artifacts · ❓ not verifiable from git · ❌ not done

| TW | Task | Status | Evidence |
|----|------|--------|----------|
| TW1 | 1.1 init Flask repo + commit to main | ✅ | `devops-flask-app` `main` @ `361ac20` |
| TW1 | 1.2 feature branch, commit, push | ✅ | branch `features/user-auth` @ `975427c` (pushed) |
| TW1 | 1.3 conflict on main → merge → resolve → push | ✅ | real conflict on merge, resolved, merge commit `2dd5ed8` pushed (2026-10-26) |
| TW1 | 2.1–2.3 Jira Scrum project + issues + board | ❓ | external tool — needs the Jira account / screenshots |
| TW1 | 3.1 Dockerfile + build + run (port 5000) | ✅ | image `devops-flask-app:1.0`, container run, `curl :5000` → `Hello World!` |
| TW1 | 3.2 Jenkins Freestyle (pull repo + list workspace) | ✅ | job `tw1-freestyle-helloworld` build #1 SUCCESS |
| TW2 | 1.1 Flask app stores entry in PostgreSQL | ✅ | `/visits` route + DATABASE_URL |
| TW2 | 1.2 docker-compose Flask + Postgres up + verified | ✅ | db healthy, `/visits` → entry #1, #2 |
| TW2 | 2.1 image accessible to cluster | ✅ | `kind load docker-image` into `devops-lab` (k8s v1.31.2) |
| TW2 | 2.2 k8s Deployment, pods verified | ✅ | 2/2 pods Running, rollout complete |
| TW2 | 2.3 k8s NodePort Service + host access | ✅ | `curl localhost:30080` → `Hello World!` |
| TW2 | 3.1 Jenkins declarative pipeline (checkout → build) | ✅ | job `tw2-declarative-pipeline` build #1 SUCCESS |
| TW2 | 3.2 Terraform local file init/plan/apply | ✅ | plan "1 to add", apply complete, `output.txt` verified |
| TW3 | A lab exam (multi-service CI/CD) | ✅ taken | exam sat morning of 2026-10-26; `devops-lab-ex` repo holds the k8s deploy steps |
| TW3 | B project (4–5 tools) | 🟡 | `devops-ca2`: Git+Docker+k8s+Ansible+Prometheus/Grafana+Actions CI/CD; missing Jira evidence, Terraform, Jenkins |
| TW3 | C viva | — | prep; see tool list in tw3/README.md |

### Related repos
- https://github.com/xzeyo/devops-flask-app — Hello World Flask app (TW1 app + Docker/compose/k8s/Jenkinsfile/terraform)
- https://github.com/xzeyo/devops-lab-ex — lab exam k8s deploy steps (TW3 prep)
- https://github.com/xzeyo/devops-ca2 — CA-II project (Java service, Docker, k8s, Ansible, monitoring, CI/CD)
