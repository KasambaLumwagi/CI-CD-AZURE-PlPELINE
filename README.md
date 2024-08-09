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
