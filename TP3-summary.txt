# TP3 - Résumé des étapes réalisées

Dans ce TP, j'ai appris à configurer et utiliser un pipeline d'intégration continue (CI) avec GitHub Actions. Voici les étapes que j'ai suivies :

1. **Création d'un pipeline simple** :
   J'ai commencé par créer un pipeline basique qui affiche simplement un message "Hello pipelines' world!". Cela m'a permis de me familiariser avec la structure des workflows GitHub Actions.

2. **Ajout du script CI du TP2** :
   Ensuite, j'ai modifié le pipeline pour exécuter le script d'intégration continue réalisé lors du TP2. Ce script automatise plusieurs tâches importantes :
   - Installation des dépendances avec `pnpm install`.
   - Vérification du typage statique avec `vue-tsc`.
   - Analyse statique du code avec ESLint.
   - Construction du package avec `nuxt generate`.
   - Exécution des tests avec Vitest.

3. **Résolution des conflits** :
   Pendant le processus, j'ai rencontré des conflits dans plusieurs fichiers de configuration (comme `package.json`, `pnpm-lock.yaml`, et `vitest.config.ts`). J'ai pris le temps de les résoudre en combinant les modifications des différentes branches.

4. **Validation et déploiement** :
   Une fois les conflits résolus, j'ai validé les changements et les ai poussés vers le dépôt distant. Le pipeline est maintenant opérationnel et exécute toutes les étapes définies.

Ce TP m'a permis de mieux comprendre les concepts de CI/CD et de travailler avec des outils modernes comme GitHub Actions. J'ai également appris à résoudre des conflits et à collaborer efficacement dans un environnement de développement partagé.