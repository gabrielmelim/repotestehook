#!/bin/sh
# remove-custom-hooks.sh

CUSTOM_HOOK_PREFIX="custom-"

echo "Removendo hooks personalizados..."

# Remove apenas os hooks personalizados
for hook in .git/hooks/${CUSTOM_HOOK_PREFIX}*; do
  if [ -f "$hook" ]; then
    echo "Removendo hook: $(basename $hook)"
    rm $hook
  fi
done

echo "Hooks personalizados removidos com sucesso."