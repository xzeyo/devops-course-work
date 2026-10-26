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

## Verification summary (what actually happened, checked against git history)

Legend: ✅ verified done · ⚠️ partial · 🟡 documented but no artifacts · ❓ not verifiable from git · ❌ not done

| TW | Task | Status | Evidence |
|----|------|--------|----------|
| TW1 | 1.1 init Flask repo + commit to main | ✅ | `devops-flask-app` `main` @ `361ac20` |
| TW1 | 1.2 feature branch, commit, push | ✅ | `devops-flask-app` branch `features/user-auth` @ `975427c` (pushed) |
| TW1 | 1.3 conflict on main → merge → resolve → push | ⚠️ | conflict set up (`main` @ `5590afe` "test" vs branch `975427c`, same line) but **no merge commit on main yet** |
| TW1 | 2.1–2.3 Jira Scrum project + issues + board | ❓ | external tool, needs screenshots |
| TW1 | 3.1 Dockerfile + build + run (port 5000) | ❌ | no Dockerfile in `devops-flask-app` |
| TW1 | 3.2 Jenkins Freestyle + screenshot | ❌ | no Jenkins evidence |
| TW2 | 1.1–1.2 Flask + Postgres docker-compose | ❌ | no compose file / DB code |
| TW2 | 2.1 image accessible (registry/minikube) | ❌ | no image pushed |
| TW2 | 2.2–2.3 k8s Deployment + Service | 🟡 | steps documented in `devops-lab-ex` README (2026-10-26), no applied YAMLs for flask app |
| TW2 | 3.1 Jenkins declarative pipeline | ❌ | no Jenkinsfile (`devops-ca2` used GitHub Actions instead) |
| TW2 | 3.2 Terraform local file | ❌ | no Terraform files |
| TW3 | A lab exam (multi-service CI/CD) | 🟡 | `devops-lab-ex` k8s deploy steps; Jenkins piece missing |
| TW3 | B project (4–5 tools) | 🟡 | `devops-ca2`: Git+Docker+k8s+Ansible+Prometheus/Grafana+Actions CI/CD; missing Jira evidence, Terraform, Jenkins |
| TW3 | C viva | — | prep; see tool list in tw3/README.md |

### Related repos
- https://github.com/xzeyo/devops-flask-app — Hello World Flask app (TW1 app)
- https://github.com/xzeyo/devops-lab-ex — lab exam k8s deploy steps (TW3 prep)
- https://github.com/xzeyo/devops-ca2 — CA-II project (Java service, Docker, k8s, Ansible, monitoring, CI/CD)
