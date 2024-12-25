touch ~/bash_aliases/system_aliases
echo "Add these lines to .bashrc or .zshrc:
if [ -f ~/bash_aliases/common_aliases ]; then\nOA
    . ~/bash_aliases/common_aliases
fi
if [ -f ~/bash_aliases/system_aliases ]; then
    . ~/bash_aliases/system_aliases
fi"
