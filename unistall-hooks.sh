#!/bin/sh
# remove-hooks.sh

HOOKS_DIR=".githooks"

echo "Removendo hooks Git..."

for hook in $HOOKS_DIR/*; do
  hook_name=$(basename $hook)
  echo "Removendo hook: $hook_name"
  rm -f .git/hooks/$hook_name
done

echo "Hooks removidos com sucesso."
