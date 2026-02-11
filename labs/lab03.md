# Lab 3
## Objectifs du TP
Découverte et prise en main des pipelines de CI sous GitHub.
Le pipeline de CI effectuera les actions suivantes :
- Récupération des dépendances
- Vérification du typage statique du code
- Analyse statique du code
- Construction du "package" à déployer
- Exécution des tests
- Publication de l'artifact

## Pré-requis
- Prendre connaissance de la [documentation](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions) relative à GitHub Actions.
- Installer l'extension vscode [GitHub Actions](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-github-actions)

## Hello pipelines' world

1. Créer un pipeline GitHub Actions qui fait un `echo "Hello pipelines' world !`.
2. Run la pipeline, et vérifier que l'on voit correctement le log.

## Exécution du script du lab 2
Modifier le pipeline pour lancer le script du lab 2 (utiliser au choix le script réalisé en lab 2 ou la correction).

## Une vraie CI

Modifier la pipeline pour qu'elle réalise les différentes étapes d'intégration continue du script
Le pipeline doit produire un artifact qui correspond au package généré.
S'assurer que le package généré fonctionne correctement.

## Pour aller plus loin
1. Ajouter un trigger sur la pipeline pour qu'elle soit déclenchée :
- Tous les jours à 8h du matin
- A chaque fois qu'un commit est fait sur la branche principale, ou bien sur une branche qui commencera par `feature/`
2. Mettre en place du cache des packages npm pour que le run de la pipeline soit plus rapide.
3. Réfléchir à comment parallèliser certaines tâches afin d'optimiser le temps d'exécution
