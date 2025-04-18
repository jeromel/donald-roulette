# Donald's Douane Roulette — Infrastructure & Application AWS

## 🎯 Objectif

Ce projet pédagogique reproduit une architecture AWS typique :  
- Un **site statique HTML** hébergé dans un bucket S3
- Une **API sans serveur** via Lambda + API Gateway
- Un **backend Node.js** qui génère aléatoirement une phrase

Il est structuré pour refléter **les bonnes pratiques d'une organisation en entreprise**, en séparant les rôles via des modules et des dossiers dédiés.

---

## 🗂️ Arborescence du projet

donalds-douane-roulette/
├── infra/                     # Toute l’infra déclarative (modulaire)
│   ├── modules/               # Modules réutilisables (S3, Lambda, etc.)
│   │   ├── s3_static_site/
│   │   ├── lambda_basic_api/
│   │   └── iam_lambda_exec_role/
│   └── stacks/                # Environnements d’assemblage
│       └── roulette/          # Ton projet
│           └── main.tf
├── app/                       # Le code de l’application
│   ├── backend/               # Code Lambda (index.js)
│   └── site/                  # Fichiers HTML/CSS/JS
├── doc                        # Documentation
│   ├── adr/                   # (Facultatif) tes décisions d’architecture
├── doc                        # Documentation
└── README.md

---

## 🔐 Gestion des identifiants AWS

> ⚠️ **Ne jamais inclure de clés AWS dans un dépôt public.**

Deux options pour l’authentification :

---

## 🔧 Prérequis

- Un compte AWS avec **IAM Identity Center (SSO)** configuré
- **AWS CLI v2** installée et configurée avec un profil nommé `terraform-deploy`
- **Terraform** installé (`terraform -v`)
- Une page HTML nommée `index.html` dans le dossier `site/`


## 🧭 Procédure de déploiement

### 1. Se connecter à AWS via SSO

```bash
aws sso login --profile terraform-deploy

Si l’URL ne s’ouvre pas, copie-colle le lien affiché dans un navigateur Windows.

### 2. Initialiser Terraform

```bash
cd terraform/
terraform init


### 3. Visualiser les modifications

```bash
terraform plan

### 4. Appliquer l'infrastructure
```bash
terraform apply

Tape yes pour confirmer.


