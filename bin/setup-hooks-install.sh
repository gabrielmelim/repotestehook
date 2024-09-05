HOOKS_DIR=".githooks"
CUSTOM_HOOK_PREFIX="custom-"

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
done

echo "Hooks configurados com sucesso."