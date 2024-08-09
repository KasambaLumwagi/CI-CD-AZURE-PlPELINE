# Terraform Azure Infrastructure Project

This repository contains Terraform configurations for setting up and managing Azure infrastructure resources, including an Azure Data Factory and an Azure Storage Account. The project is modularized to allow for easy reuse and scalability.

## Table of Contents

- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Setup and Initialization](#setup-and-initialization)
- [Configuration](#configuration)
- [Usage](#usage)
  - [Planning](#planning)
  - [Applying Changes](#applying-changes)
  - [Destroying Resources](#destroying-resources)
- [Modules](#modules)
  - [Data Factory Module](#data-factory-module)
  - [Storage Account Module](#storage-account-module)
- [State Management](#state-management)
- [Troubleshooting](#troubleshooting)
- [License](#license)

## Project Structure

The project is organized as follows:

```bash
.
├── main.tf                       # Main Terraform configuration file
├── modules                       # Directory containing reusable Terraform modules
│   ├── data_factory              # Module for Azure Data Factory
│   │   └── data_factory
│   │       ├── data_factory.tf   # Terraform configuration for Azure Data Factory
│   │       └── variables.tf      # Variables for the Data Factory module
│   └── storage_account           # Module for Azure Storage Account
│       └── storage_account
│           ├── storage_account.tf # Terraform configuration for Azure Storage Account
│           └── variables.tf      # Variables for the Storage Account module
├── plan.out                      # Output of `terraform plan` command
├── README.md                     # Project documentation (this file)
├── terraform.tfstate             # Current state of the Terraform-managed infrastructure
├── terraform.tfstate.backup      # Backup of the previous Terraform state
├── variables.tf                  # Global variables used in the project
└── variables.tfvars              # File containing the values of variables

6 directories, 11 files

```
## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (v1.0.0 or later)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) for managing Azure credentials
- An Azure account with sufficient permissions to create and manage resources

## Setup and Initialization

### Clone the Repository:

```bash
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name

```
## Authenticate with Azure

Before initializing Terraform, authenticate with your Azure account:

```bash
az login
```

## Initialize Terraform
Initialize Terraform to download the required providers and modules:
```bash
terraform init
```
## Configuration

### Variables

The configuration values for the Terraform modules are defined in `variables.tf` files. You can specify these values in the `variables.tfvars` file or directly in the command line.

### Edit `variables.tfvars`

Open the `variables.tfvars` file and update it with your desired values. For example:

```hcl
resource_group_name = "my-resource-group"
location = "eastus"
storage_account_name = "mystorageaccount"
data_factory_name = "mydatafactory"
```

### Planning

To preview the changes Terraform will make, run the following command. This will generate a plan and save it to plan.out:

```bash
terraform plan -var-file=variables.tfvars -out=plan.out
```
### Applying Changes
After reviewing the plan, apply the changes to your infrastructure:
This command will apply the changes described in the plan.out file and create or modify the infrastructure resources on Azure.
```bash
terraform apply plan.out
```
### Destroying Resources
If you need to tear down the infrastructure, use the destroy command:
```bash
terraform destroy -var-file=variables.tfvars

```


