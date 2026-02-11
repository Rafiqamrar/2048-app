# Lab 2

## Objectif du TP

Mise en place d'un script d'integration continue qui automatise l'exécution des tâches suivantes:
- Récupération des dépendances
- Vérification du typage statique du code
- Analyse statique du code
- Construction du "package" à déployer
- Exécution des tests

## Pré-requis
- Cloner le projet en local
- Créer une nouvelle branche git `lab2`

## Initialisation du script

1. Choisir un langage de script : bash ou [PowerShell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell) par exemple (installer si nécessaire)
2. A la racine du répertoire du projet, créer un dossier `deliverables/lab02` avec un fichier qui contiendra un script à l'intérieur

## Récupération des dépendances

1. Installer les dépendances du projet à l'aide de la commande `pnpm install`
2. Supprimer le répertoire `node_modules` et tout ce qu'il contient
3. Réinstaller les dépendances du projet. Vérifier que les dépendances ne sont pas re-téléchargées et que le temps d'installation est plus court que précédemment
4. Ajouter cette première étape au script

> Comme indiqué sur la [documentation](https://pnpm.io/fr/cli/exec) pnpm également permet d'exécuter des dépendances du projet en faisant simplement la commande `pnpm nomdeladependance`. Dans la suite du TP, lorsque l'on aura besoin d'utiliser un package, on s'assurera qu'il est installé sur le projet et on l'exécutera via pnpm.

## Vérification du typage statique du code

Vue dispose d'un outil en ligne de commande de "type-checking" du code: [vue-tsc](https://github.com/vuejs/language-tools/tree/master/packages/tsc).
Nuxt dispose d'une commande [typecheck ](https://nuxt.com/docs/4.x/api/commands/typecheck) qui utilise vue-tsc en interne.

2. Exécuter l'analyse statique en ligne de commande via la commande `nuxt typecheck` et vérifier que le projet ne comporte pas d'erreur
3. Dans un des composants vue du projet qui fait appel à un autre composant, faire volontairement une faute de frappe sur une prop de cet autre composant
4. Vérifier que l'IDE remonte une erreur comme quoi la prop n'existe pas
5. Exécuter l'analyse statique en ligne de commande via la commande `nuxt typecheck` et vérifier que l'erreur soit remontée également
6. Supprimer la faute de frappe et ajouter cette étape de type-checking au script

## Analyse statique du code

Un des principaux outils utilisez pour faire de l'analyse de code statique en JavaScript est [ESLint](https://eslint.org/)

1. Parcourir rapidement le site [eslint](https://eslint.org/) pour comprendre le fonctionnement
2. Utiliser la doc où GitHub Copilot pour comprendre comment on configurer utiliser `eslint` sur le projet le projet
3. Exécuter `eslint` pour qu'il analyse statiquement les fichiers Vue et TypeScript: s'assurer qu'il n'y a pas d'erreur
4. Ajouter ou modifier du code pour qu'ESLint remonte une erreur. Constater que l'IDE remonte bien l'erreur
5. Vérifier que l'erreur est bien remontée également en exécutant ESLint
6. Enlever la modification et ajouter l'étape d'analyse statique de code au script

## Construction du "package" à déployer

Afin de compiler le code pour produire le package/bundle qui sera utilisé en production, on utilise [Vite](https://vitejs.dev/) qui est un outil frontend similaire à Webpack mais beaucoup plus moderne. Vite est également utilisé lors du développement en fournissant un serveur de développement qui démarre très rapidement. 

Comme plein d'autre frameworks frontend, Nuxt utilise Vite en interne.

1. Se familiariser à Vite en parcourant rapidement [sa documentation](https://vitejs.dev/guide/why.html)
2. Construire le package avec la commande [nuxt build](https://vitejs.dev/guide/cli.html#build)
3. Vérifier que le package est bien disponible dans le répertoire `output` (répertoire par défaut)
5. Configurer git pour que le répertoire `output` contenant le package ne soit pas `commit`.
6. Vérifier que le package fonctionne bien en le lançant en local grace à la commande `nuxt preview`: l'application web devrait se lancer.
7. Ajouter l'étape de packaging au script

## Exécution des tests

Il existe un certain nombre de frameworks de test JavaScript. Un des plus récents et des plus modernes est le framework [Vitest](https://vitest.dev/) qui est natif à Vite et qui propose une API compatible à celle de Jest (autre framework de tests populaire).

1. Se familiariser à Vitest en parcourant rapidement [sa documentation](https://vitest.dev/).
2. Le projet ne comporte pas de test, ajouter un test unitaire. Par exemple pour le composant Tile afin de vérifier que lorsqu'une tuile de la grille du 2048 comporte un 2, le fond de cette tuile est orange.
2. Exécuter les tests sur le projet à l'aide de la commande `vitest` et assurez-vous que le test est bien vert.
3. Modifier le 2 en entrée du test par un 4 et s'assurer que le test est passé à rouge.
4. Remodifier le code pour le faire revenir comme avant et s'assurer que le test est passé au vert.
5. Ajouter l'étape d'exécution des tests au script.

## Vérification du script final

1. Lancer le script complet et vérifier qu'il s'exécute correctement
2. Si tout est bon, passer en revue la version finale du script et y ajouter des commentaires si besoin
3. Faire un commit de la version finale du script et un push la branche `lab2`

## Livrables

1. Le script finalisé
2. Un fichier de notes expliquant comment et pourquoi vous avez réalisé le script de cette manière, et les notions apprises durant ce TP.

## Pour aller plus loin

Si vous avez terminé les étapes précédentes du TP, vous pouvez améliorer votre script avec les tâches suivantes :

1. Ajouter une étape à votre script qui identifie les dépendances qui seraient à mettre à jour. Log la sortie de la commande au format JSON dans un fichier `reports/outdated-dependencies.json`.
2. Mettre à jour toutes les dépendances.
3. Ajouter une étape à votre script qui identifie les dépendances comportant des vulnérabilités connues. Log la sortie de la commande au format JSON dans un fichier `reports/vulnerable-dependencies.json`.
4. Constater qu'il n'y a pas de vulnérabilité connue pour le moment. Ajouter la version de [lodash](https://lodash.com/) 4.17.20 qui  comporte des vulnérabilités. Relancer l'analyse.
5. Trouver dans la documentation de pnpm la commande permettant de forcer la mise à jour des dépendances présentant des vulnérabilités. L'exécuter.
