#!/bin/bash

## Partie Pour aller plus loin ##
echo "Identification des dépendances obsolètes"
mkdir -p reports
pnpm outdated --format json > reports/outdated-dependencies.json
# pnpm up --latest

echo "Identification des dépendances vulnérables"
pnpm audit --json  > reports/vulnerable-dependencies.json   
# pnpm audit --fix
## Partie Pour aller plus loin ##

echo "Installation des dépendances du projet"
pnpm install

echo "Type checking" 
pnpm nuxt typecheck

echo "Build du projet"
pnpm nuxt build

echo "Analyse statique"
pnpm eslint .

# echo "Lancement du package créé" 
# pnpm nuxt preview

echo "Execution des tests"
pnpm vitest run