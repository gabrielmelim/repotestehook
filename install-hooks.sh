#! /bin/sh
# setup-hooks.sh

HOOKS_DIR=".githooks"

echo "Configurando hooks Git..."

# Cria o diretório de hooks se não existir
mkdir -p .git/hooks

# Copia todos os scripts de hooks do diretório .githooks para .git/hooks
for hook in $HOOKS_DIR/*; do
  hook_name=$(basename $hook)
  echo "Configurando hook: $hook_name"
  cp $hook .git/hooks/$hook_name
  chmod +x .git/hooks/$hook_name
done

echo "Hooks configurados com sucesso."
