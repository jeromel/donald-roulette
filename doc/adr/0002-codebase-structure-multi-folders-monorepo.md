# ADR 0001 : Organisation d’un projet Terraform / AWS en monorepo multi-dossiers

## Statut

Accepté

## Contexte

Le projet met en œuvre une infrastructure AWS incluant des ressources S3, Lambda et API Gateway, avec une logique applicative (HTML/JS côté client et Node.js côté serveur) et une infrastructure déclarée via Terraform.

Dans une entreprise, chaque périmètre (IAM, infrastructure, code applicatif) est généralement pris en charge par une équipe différente. Ces équipes ont des rôles, des processus, des permissions et des cycles de vie indépendants.

Il est d’usage, dans des environnements professionnels matures, de gérer ces périmètres dans **des dépôts Git distincts**, par exemple :
- `terraform-iam/` pour la sécurité (rôles, policies)
- `terraform-app/` pour l’infrastructure applicative
- `frontend-app/` pour l’interface statique (HTML/CSS/JS)
- `backend-api/` pour les fonctions Lambda et API Gateway

Cependant, dans le cadre de ce projet pédagogique, l’ensemble des périmètres est **centralisé dans un unique codebase multi-dossiers**, afin de :
- Faciliter l’apprentissage
- Réduire les frictions liées à la CI/CD ou à la configuration des droits Git
- Simuler une séparation logique sans multiplier les dépôts

## Décision

Nous organisons la base de code sous la forme d’un **monorepo à plusieurs dossiers spécialisés**, en suivant une logique de séparation des responsabilités :

