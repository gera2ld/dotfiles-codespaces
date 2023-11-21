#!/usr/bin/env zsh

cd $HOME

curl -fsSLo sun https://b2.gera2ld.space/sun/sun-linux-amd64
chmod +x sun
SUN_MODE=minimal ./sun install neovim deno

cat <<EOF >> .zshrc
set -o vi
alias vi=nvim
alias p=pnpm
export PNPM_HOME="\$HOME/.local/share/pnpm"
export PATH="\$PNPM_HOME:\$HOME/.local/bin:\$PATH"
EOF

. $HOME/.zshrc
