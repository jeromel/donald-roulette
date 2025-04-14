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

### ✅ 1. **AWS CLI (recommandée)**

Configure une fois :

```bash
aws configure
