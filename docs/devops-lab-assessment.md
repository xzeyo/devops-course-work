# DevOps Lab Assessment Questions

(Source: "DevOps Lab Assessment Questions (1).docx")

## 1. TW1 — Continuous Evaluation: Foundational DevOps Skills (10 Marks)

Instructions: Complete the following tasks in your lab environment. Document your commands and outputs as evidence.

Scenario: You are a developer working on a new feature for a web application.

### Git Workflow & Collaboration (4 Marks)
- **Task 1.1 (1 Mark):** Initialize a new Git repository for a simple "Hello World" Python Flask application (provided to you). Add the initial code and commit it to the main branch.
- **Task 1.2 (1.5 Marks):** Create a new branch named feature/user-auth. Make a small modification (e.g., add a new print statement) in this branch, commit the changes, and push the branch to a remote repository (e.g., GitHub/GitLab).
- **Task 1.3 (1.5 Marks):** Simulate a conflict: On the main branch, modify the same line you changed in feature/user-auth. Commit this change. Now, attempt to merge feature/user-auth into main. Resolve the merge conflict manually and commit the resolution. Push the updated main branch.

### Jira Project & Issue Tracking (3 Marks)
- **Task 2.1 (1 Mark):** Log in to your free Jira Cloud instance. Create a new "Scrum" project for the "Hello World" application.
- **Task 2.2 (1 Mark):** Create the following issues within your new project:
  - One "Story" titled "Implement User Authentication Feature".
  - One "Task" titled "Setup Flask Environment".
  - One "Bug" titled "Login Page Displays Error".
- **Task 2.3 (1 Mark):** Navigate to the project's board. Move the "Setup Flask Environment" task from "To Do" to "In Progress".

### Basic Containerization (Docker) & Jenkins Freestyle Project (3 Marks)
- **Task 3.1 (1.5 Marks):** Create a Dockerfile for your Python Flask "Hello World" application. The Dockerfile should build a minimal image that runs the application on port 5000. Build the Docker image locally and verify it runs correctly.
- **Task 3.2 (1.5 Marks):** Set up a Jenkins Freestyle project. Configure it to pull your Git repository (from Task 1.1) and execute a build step that lists the contents of the workspace. Trigger a build and provide a screenshot of the successful build output.

## 2. TW2 — Continuous Evaluation: Advanced DevOps Practices (10 Marks)

Instructions: Build upon your previous work. Document your commands, configuration files (e.g., docker-compose.yml, Kubernetes YAMLs), and outputs.

Scenario: You need to enhance your "Hello World" application to include a database and deploy it using orchestration tools.

### Docker Compose for Multi-Container App (3 Marks)
- **Task 1.1 (1 Mark):** Modify your "Hello World" Flask application to include a simple PostgreSQL database (e.g., the app connects to and stores a single entry).
- **Task 1.2 (2 Marks):** Create a docker-compose.yml file that defines two services: your Flask application and the PostgreSQL database. Configure them to communicate. Bring up the application using docker-compose up and verify both services are running and communicating. Provide the docker-compose.yml and output.

### Kubernetes Deployment & Service (4 Marks)
- **Task 2.1 (1 Mark):** Ensure your Docker image from TW1 (or an updated one) is accessible (e.g., pushed to a public Docker Hub repository, or Minikube's Docker daemon is used).
- **Task 2.2 (1.5 Marks):** Create a Kubernetes Deployment YAML for your Flask application. Deploy it to your local Kubernetes cluster (Minikube/Kind). Verify the Pods are running.
- **Task 2.3 (1.5 Marks):** Create a Kubernetes Service YAML (type NodePort or LoadBalancer if supported) to expose your Flask application. Apply the manifest and provide the command to access your application from your host machine.

### Integrated CI/CD with Jenkins & Basic Infrastructure as Code (IaC) (3 Marks)
- **Task 3.1 (2 Marks):** Create a Jenkins Declarative Pipeline that performs the following steps:
  - Checks out your Git repository.
  - Builds the Docker image for your Flask application (from Task 1.1).
  - (Optional but Recommended for higher scores): Pushes the built Docker image to a registry.
- **Task 3.2 (1 Mark):** Install Terraform. Write a simple Terraform configuration (main.tf) to create a local file (e.g., output.txt) with some content. Initialize, plan, and apply the configuration. Show the output of terraform plan and verify the file creation.

## 3. TW3 — ESE Lab Exam + Project Evaluation + Viva (30 Marks)

Instructions: This is a comprehensive assessment that combines practical lab work with a project implementation and a viva-voce.

### A. ESE Lab Exam (10 Marks)

Scenario: You are tasked with setting up a fully functional CI/CD pipeline for a given multi-service application (e.g., a simple microservice architecture with a frontend, backend, and database).

Task: Given a multi-service application (frontend, backend, database components), implement a complete CI/CD pipeline from scratch.
- Initialize a Git repository and set up a basic branching strategy.
- Utilize Jira to create and track issues related to the deployment.
- Develop a Jenkins pipeline that:
  - Pulls code from Git.
  - Builds Docker images for each service.
  - Pushes images to a Docker registry.
  - Deploys the services to a local Kubernetes cluster.
- Expose the application services via Kubernetes Services.
- (Optional for higher scores): Use a simple Terraform configuration to provision a basic infrastructure component (e.g., a local directory for logging).

Evaluation Rubric (Lab Exam - 10 Marks):
- Problem Solving & Practical Application (5 Marks): Ability to correctly set up, configure, and integrate all required tools to achieve the functional pipeline.
- Accuracy & Efficiency of Solution (3 Marks): The pipeline should run smoothly without manual intervention, and the deployed application should be fully functional.
- Troubleshooting & Debugging (2 Marks): Ability to quickly identify and resolve any issues encountered during the setup and execution.

### B. Project Evaluation (10 Marks)

Instructions: Develop a small-scale DevOps project that demonstrates your understanding and integration of at least 4-5 core DevOps tools (e.g., Git, Jira, Jenkins, Docker, Kubernetes, Terraform, Prometheus/Grafana for monitoring, Ansible for configuration management).

Project Idea (Example): Build a "Personal Blog Application" with a CI/CD pipeline.

Requirements:
- The application should be version-controlled using Git.
- Use Jira for project and issue tracking.
- Implement a Jenkins pipeline for continuous integration and continuous delivery.
- Containerize the application using Docker.
- Deploy the containerized application to a Kubernetes cluster.
- Use Terraform for provisioning at least one infrastructure component (e.g., a persistent volume for the blog data).
- (Optional for higher scores): Implement basic monitoring using Prometheus/Grafana or automated testing.

Evaluation Rubric (Project - 10 Marks):
- Project Design & Architecture (3 Marks): How well are the DevOps tools integrated? Is the architecture sound and scalable?
- Functionality & Completeness (3 Marks): Does the project work as intended? Are all specified requirements met?
- Code Quality & Best Practices (2 Marks): Readability, comments, adherence to best practices for Dockerfiles, Jenkinsfiles, Kubernetes YAMLs, and Terraform configurations.
- Documentation & Presentation (2 Marks): Clarity and completeness of project documentation (e.g., README.md, setup instructions, architecture diagrams if any) and effectiveness of the project demonstration.

### C. Viva (10 Marks)

Instructions: Be prepared to answer questions related to your ESE Lab Exam and Project, as well as general DevOps concepts.

Evaluation Rubric (Viva - 10 Marks):
- Understanding of Concepts (4 Marks): Ability to clearly explain the theoretical concepts behind the tools used, the CI/CD pipeline, containerization, orchestration, and IaC.
- Problem-Solving & Critical Thinking (3 Marks): Ability to discuss challenges faced during the lab/project and how they were overcome, as well as to propose alternative solutions.
- Clarity of Explanation & Communication (3 Marks): Articulation and confidence in explaining technical details and answering questions.
