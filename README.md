# 🇺🇸 Donald's Douane Roulette — Déploiement AWS avec Terraform

Ce projet permet de déployer une **application web statique HTML/JS/CSS** sur **AWS S3** à l'aide de **Terraform**. L'objectif est de servir le site via un bucket S3 configuré en mode "site web statique public".

---

## 🗂️ Structure du projet

Ce dépôt contient deux dossiers principaux :

- `site/` : le code HTML/CSS/JS de la roue
- `terraform/` :
├── variables.tf
├── outputs.tf
├── providers.tf
├── s3.tf            # bucket statique S3
├── cloudfront.tf    # CDN avec HTTPS (facultatif)
├── iam.tf           # IAM policy + role pour l'accès S3
└── secrets.auto.tfvars  # fichier privé (non versionné) pour tes variables sensibles

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

### 5. Uploader la page HTML
```bash
aws s3 cp ../site/index.html s3://donalds-douane-roulette/index.html --profile terraform-deploy

