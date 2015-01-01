if groups | grep -w 'nix-users' > /dev/null; then
    export NIX_REMOTE=daemon
fi
