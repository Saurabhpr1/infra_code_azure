
# 🏗️ Infrastructure as Code (IaC) on Microsoft Azure using Terraform & Azure Pipelines

<p align="center">
  <img src="https://img.shields.io/badge/Terraform-v1.6%2B-purple?logo=terraform"/>
  <img src="https://img.shields.io/badge/Cloud-Azure-blue?logo=microsoftazure"/>
  <img src="https://img.shields.io/badge/CI%2FCD-Azure%20Pipelines-lightgrey?logo=azurepipelines"/>
  <img src="https://img.shields.io/badge/Infrastructure%20as%20Code-Terraform%20%7C%20Azure-blueviolet"/>
  <img src="https://img.shields.io/badge/Status-Active-success"/>
  <img src="https://img.shields.io/github/last-commit/Saurabhpr1/infra_code_azure"/>
</p>

---

📌 Overview  
This project implements **Infrastructure as Code (IaC)** on Microsoft Azure using Terraform . It automates provisioning of core Azure resources and pipelines to support scalable, reproducible infrastructure.  
URL: https://github.com/Saurabhpr1/infra_code_azure

---

🚀 Features  
- Automated creation of Azure networking and compute resources:  
  - Virtual Network (VNet), Subnets, Network Security Groups (NSGs)  
  - Virtual Machine(s), Public IP, NICs  
- Infrastructure-as-Code configuration stored in Terraform (.tf) files  
- CI/CD pipelines defined (YAML) for Azure DevOps / GitHub Actions:  
  - `azure-infra_pipelines_by_ank.yml`, `azure-stage-pipelines.yml`, etc.  
- Reusable modules pattern and environment separation (dev / stage) for repeatable deployments  
- Version control in GitHub for full traceability  

---

🧰 Tools & Technologies  
- **Terraform** (HCL)  
- **Microsoft Azure** platform  
- **Git & GitHub** for version control  
- **YAML** pipelines for CI/CD (Azure DevOps / GitHub Actions)  
- **Linux / Bash**   


🏗️ Project Structure  
```bash
infra_code_azure/
│
├── virtualnetwork/                # Virtual Network configuration files
├── subnet/                        # Subnet templates and scripts
├── resource/                      # Resource group or shared resources
├── virtualmachine/                # VM templates and parameters
├── Public_ip/                     # Public IP configurations
├── Nic/                           # Network Interface settings
├── Environ/                       # Environment variable files
│
├── azure-infra_pipelines_by_ank.yml   # Main Azure DevOps pipeline
├── azure-stage-pipelines.yml          # Stage-specific pipeline definition
├── my_pipeline.yml                    # Custom pipeline configuration
└── new_pipeline.yml                   # Experimental/new pipeline

----
⚙️ Setup & Deployment  

1️⃣ Clone the Repository  
```bash
git clone https://github.com/Saurabhpr1/infra_code_azure.git
cd infra_code_azure
````

2️⃣ Initialize Terraform

```bash
terraform init
```

3️⃣ Review / Validate Configuration

```bash
terraform validate
terraform plan -var-file="Environ/dev.tfvars"
```

4️⃣ Deploy Infrastructure

```bash
terraform apply -var-file="Environ/dev.tfvars" -auto-approve
```

5️⃣ Destroy Infrastructure (optional)

```bash
terraform destroy -var-file="Environ/dev.tfvars" -auto-approve
```

---

🔐 State & Collaboration

* Use remote state backend (Azure Storage / Azure Blob) for storing state files and locking (if configured)
* All infra code and pipeline definitions are version-controlled in GitHub

---

🧩 Future Improvements

* Add multi-region / multi-subscription support for Azure
* Integrate monitoring & alerting using Azure Monitor or Prometheus
* Implement automated approvals and deployment gates in CI/CD pipelines
* Use Terraform modules for even higher reusability

---

👨‍💻 Author

**Saurabh Prajapati**
DevOps Engineer
[LinkedIn][(https://linkedin.com/in/saurabhprajapati1) 
[Email](mailto:prajapatisaurabh417@gmail.com)

---

🧠 Learning Outcomes

Through this project I gained hands-on understanding of:

* Writing modular Terraform code for Azure resources
* Managing infrastructure lifecycle via code and pipelines
* CI/CD workflows for infra provisioning and deployments
* Version control & collaboration in GitHub for infrastructure code

---


