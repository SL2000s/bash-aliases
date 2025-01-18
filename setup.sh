#!/bin/bash

SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
COMMON_BASH_ALIASES_PATH="$SCRIPT_DIR/common_aliases"
SYSTEM_BASH_ALIASES_PATH="$SCRIPT_DIR/system_aliases"
BASHRC_D_DIR="$HOME/.bashrc.d"

# Ensure the .bashrc.d directory exists
if [ ! -d "$BASHRC_D_DIR" ]; then
    mkdir -p "$BASHRC_D_DIR"
    echo "Created directory: $BASHRC_D_DIR"
fi

# Create symlinks for the aliases files in ~/.bashrc.d
ln -sf "$COMMON_BASH_ALIASES_PATH" "$BASHRC_D_DIR/common_aliases"
ln -sf "$SYSTEM_BASH_ALIASES_PATH" "$BASHRC_D_DIR/system_aliases"

# Create system_aliases file if it doesn't exist
if [ ! -f "$SYSTEM_BASH_ALIASES_PATH" ]; then
    touch "$SYSTEM_BASH_ALIASES_PATH"
    echo "Created file: $SYSTEM_BASH_ALIASES_PATH"
fi

# Print updated instructions
echo "Add this to your .bashrc or .zshrc:
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f \"\$rc\" ]; then
            . \"\$rc\"
        fi
    done
fi
unset rc"
