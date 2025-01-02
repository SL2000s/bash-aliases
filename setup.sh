#!/bin/bash

SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
COMMON_BASH_ALIASES_PATH="$SCRIPT_DIR/common_aliases"
SYSTEM_BASH_ALIASES_PATH="$SCRIPT_DIR/system_aliases"

touch "$SYSTEM_BASH_ALIASES_PATH"
echo "Add these lines to .bashrc or .zshrc:
COMMON_BASH_ALIASES_PATH=\"$COMMON_BASH_ALIASES_PATH\"
SYSTEM_BASH_ALIASES_PATH=\"$SYSTEM_BASH_ALIASES_PATH\"
if [ -f \"\$COMMON_BASH_ALIASES_PATH\" ]; then
    . \"\$COMMON_BASH_ALIASES_PATH\"
fi
if [ -f \"\$SYSTEM_BASH_ALIASES_PATH\" ]; then
    . \"\$SYSTEM_BASH_ALIASES_PATH\"
fi"
