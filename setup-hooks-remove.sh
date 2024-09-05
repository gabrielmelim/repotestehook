#! /bin/sh
# cleanup-hooks.sh

HOOKS_DIR=".git/hooks"
CUSTOM_HOOK_PREFIX="test"

echo "Removendo hooks Git..."

# Remove os wrappers e scripts com prefixo
for hook in $HOOKS_DIR/${CUSTOM_HOOK_PREFIX}*; do
  if [ -e "$hook" ]; then
    rm "$hook"
  fi
done

# Remove os wrappers restantes, se houver
for hook in $HOOKS_DIR/*; do
  if [ -e "$hook" ]; then
    rm "$hook"
  fi
done
