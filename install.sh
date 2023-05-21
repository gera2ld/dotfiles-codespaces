#!/usr/bin/env zsh

cd $HOME

curl -fsSLo sun https://sun-gerald-win.ipns.dweb.link/sun-linux-amd64
chmod +x sun
SUN_MODE=minimal ./sun install neovim
SUN_MODE=minimal ./sun install deno

cat <<EOF >> .zshrc
set -o vi
alias vi=nvim
alias p=pnpm
export PNPM_HOME="\$HOME/.local/share/pnpm"
export PATH="\$PNPM_HOME:\$HOME/.local/bin:\$PATH"
EOF

. .zshrc
pnpm i -g pnpm npm-check-updates
