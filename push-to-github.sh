#!/bin/bash
# push-to-github.sh
# Carrega tudo o que está nesta pasta para o repositório GitHub.
# Antes de correr: instala o git se ainda não tens, e autentica-te no GitHub
# (com `gh auth login` ou configurando um token pessoal).

set -e  # parar em caso de erro

REPO_URL="https://github.com/NuneX-mBrothers/Fishify.git"
BRANCH="main"

echo "==> A inicializar o repositório git..."

# Se já existe um .git aqui, salta init
if [ ! -d ".git" ]; then
    git init
    git branch -M "$BRANCH"
fi

# Define o remote (substitui se já existir)
if git remote get-url origin > /dev/null 2>&1; then
    git remote set-url origin "$REPO_URL"
else
    git remote add origin "$REPO_URL"
fi

echo "==> A adicionar ficheiros..."
git add .

# Verifica se há alterações
if git diff --cached --quiet; then
    echo "Sem alterações para fazer commit. A tentar push à mesma."
else
    echo "==> A criar commit..."
    git commit -m "Redesign do site Fishify: multilíngue (PT/EN/ES/FR/ZH), menu interativo, hero com fundadores"
fi

echo "==> A fazer push para $REPO_URL ($BRANCH)..."
# --force só na primeira vez se o repo no GitHub tiver um commit inicial (ex: README criado lá);
# se preferires merge, troca por: git pull origin "$BRANCH" --allow-unrelated-histories
git push -u origin "$BRANCH" --force

echo ""
echo "✅ Pronto! Vê em: https://github.com/NuneX-mBrothers/Fishify"
echo ""
echo "Para servir o site via GitHub Pages:"
echo "  Settings → Pages → Source: Deploy from a branch → Branch: $BRANCH → /(root)"
