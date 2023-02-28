#!/bin/bash

if [[ -f $HOME/.cargo/env ]]; then
  source $HOME/.cargo/env
  rustup self update
  rustup update
 else
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --no-modify-path -y
  source $HOME/.cargo/env
fi

cargo install starship exa ripgrep fd-find zoxide cargo-update topgrade

