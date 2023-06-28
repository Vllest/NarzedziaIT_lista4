#!/bin/bash

if [[ $1 == "--init" ]]; then

  git clone https://github.com/Vllest/NarzedziaIT_lista4.git

  current_dir=$(pwd)
  echo "export PATH=\"$current_dir:\$PATH\"" >> ~/.bashrc
  source ~/.bashrc

  echo "Repozytorium zostało sklonowane, a ścieżka została ustawiona w zmiennej PATH."
else
  echo "Użycie: skrypt.sh --init"
  exit 1
fi
