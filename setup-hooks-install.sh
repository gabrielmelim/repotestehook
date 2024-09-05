#! /bin/sh
# setup-hooks.sh

HOOKS_DIR=".githooks"
CUSTOM_HOOK_PREFIX="test"

echo "Configurando hooks Git..."

# Cria o diretório de hooks se não existir
mkdir -p .git/hooks

# Copia todos os scripts de hooks do diretório .githooks para .git/hooks
for hook in $HOOKS_DIR/*; do
  hook_name=$(basename $hook)
  # Adiciona prefixo personalizado
  custom_hook_name="${CUSTOM_HOOK_PREFIX}${hook_name}"
  echo "Configurando hook: $custom_hook_name"
  cp $hook .git/hooks/$custom_hook_name
  chmod +x .git/hooks/$custom_hook_name
  
  # Cria um wrapper para o hook com o nome correto
  wrapper_name=$(basename $hook)
  echo "#! /bin/sh" > .git/hooks/$wrapper_name
  echo "./$custom_hook_name" >> .git/hooks/$wrapper_name
  chmod +x .git/hooks/$wrapper_name
done
done

echo "Hooks configurados com sucesso."
