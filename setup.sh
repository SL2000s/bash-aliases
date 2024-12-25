touch ~/bash_aliases/specific_aliases
echo "Add these lines to .bashrc or .zshrc:
if [ -f ~/bash_aliases/common_aliases ]; then\nOA
    . ~/bash_aliases/common_aliases
fi
if [ -f ~/bash_aliases/specific_aliases ]; then
    . ~/bash_aliases/specific_aliases
fi"
