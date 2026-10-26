# Raw execution evidence (captured 2026-10-26)

Real command output from running TW1 3.x and TW2 on the lab box
(Docker 26.1.5, Jenkins 2.580.1 LTS at :8080, kind v0.25.0 / Kubernetes v1.31.2,
Terraform 1.9.8). Logs are captured verbatim from the executed commands.

| File | What it proves |
|------|----------------|
| tw1-docker-build-run.log | TW1 3.1: image build, container run, curl -> Hello World! |
| tw1-container-run.log | TW1 3.1: container log with "Test Path Called" print + 200 GET |
| tw1-jenkins-freestyle-console.log | TW1 3.2: freestyle job git-clone + ls workspace, SUCCESS |
| tw2-compose.log | TW2 1.1/1.2: Flask+Postgres compose, /visits stored entries #1,#2 |
| tw2-k8s.log | TW2 2.1-2.3: kind cluster, image load, 2/2 pods, NodePort curl |
| tw2-jenkins-pipeline-console.log | TW2 3.1: declarative pipeline checkout->docker build, SUCCESS |
| tw2-terraform.log | TW2 3.2: terraform init/plan/apply, output.txt created |
| kind-create.log | creation of the kind cluster used for TW2 2.x |
