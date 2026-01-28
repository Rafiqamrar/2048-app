#!/usr/bin/env bash

# ===============================
# CI SCRIPT - DEVOPS LAB 2
# ===============================
# Ce script automatise les tâches d'intégration continue :
# 1. Récupération des dépendances (pnpm install)
# 2. Vérification du typage statique (vue-tsc)
# 3. Analyse statique du code (ESLint)
# 4. Construction du package (nuxt generate)
# 5. Exécution des tests (Vitest)
# ===============================

# Arrêter le script dès qu'une commande échoue
set -e

# Se placer à la racine du projet
cd "$(dirname "$0")/.."

echo "🚀 Starting CI pipeline"
echo ""

# ===============================
# 0. VÉRIFICATION DE NODE.JS
# ===============================
# Nuxt 4 / Vite 7 requiert Node.js 20.19+ ou 22.12+

NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 20 ]; then
    echo "⚠️  Warning: Node.js version $(node -v) detected."
    echo "   Nuxt 4 / Vite 7 requires Node.js 20.19+ or 22.12+"
    echo "   Some steps may fail. Please upgrade Node.js."
    echo ""
fi

# ===============================
# 1. DEPENDENCIES INSTALLATION
# ===============================
# pnpm install télécharge les dépendances définies dans package.json
# pnpm utilise un store global pour éviter la duplication des packages

echo "📦 Step 1: Installing dependencies..."
pnpm install
echo "✅ Dependencies installed"
echo ""

# ===============================
# 2. STATIC TYPE CHECKING
# ===============================
# vue-tsc est l'outil de type-checking de Vue 3
# Il vérifie les types TypeScript dans les fichiers .vue et .ts
# L'option --noEmit vérifie les types sans générer de fichiers

echo "🔍 Step 2: Running TypeScript type checking (vue-tsc)..."
pnpm exec vue-tsc --noEmit
echo "✅ Type checking passed"
echo ""

# ===============================
# 3. STATIC CODE ANALYSIS
# ===============================
# ESLint analyse le code pour détecter les erreurs potentielles,
# les mauvaises pratiques et les violations de style

echo "🧹 Step 3: Running ESLint analysis..."
pnpm eslint .
echo "✅ ESLint analysis passed"
echo ""

# ===============================
# 4. BUILD / PACKAGING
# ===============================
# Nuxt utilise Vite en interne pour la compilation
# 'nuxt generate' génère un site statique dans .output/public
# On copie ensuite le résultat dans le dossier "publish"

echo "🏗️ Step 4: Building application with Nuxt (uses Vite)..."
pnpm nuxt generate
# Copier le résultat dans le dossier publish
rm -rf publish
cp -r .output/public publish
echo "✅ Build completed - output in publish/"
echo ""

# ===============================
# 5. TESTS EXECUTION
# ===============================
# Vitest est le framework de test natif à Vite
# L'option "run" exécute les tests une fois (mode CI)

echo "🧪 Step 5: Running unit tests with Vitest..."
pnpm vitest run
echo "✅ All tests passed"
echo ""

# ===============================
# END
# ===============================

echo "========================================="
echo "✅ CI pipeline finished successfully! 🎉"
echo "========================================="

