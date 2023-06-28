#!/bin/bash

if [[ $1 == "--logs" ]]; then
  if [[ -z $2 ]]; then
    number_of_files=100
  else
    number_of_files=$2
  fi

  for (( i=1; i<=$number_of_files; i++ )); do
    dir_name="log${i}"
    file_name="${dir_name}/log${i}.txt"

    # Tworzenie katalogu
    mkdir -p "$dir_name"

    # Zapisywanie informacji do pliku
    echo "Nazwa pliku: log${i}.txt" > "$file_name"
    echo "Nazwa skryptu: skrypt.sh" >> "$file_name"
    echo "Data utworzenia: $(date)" >> "$file_name"
  done

  echo "Utworzono $number_of_files plików logx/logx.txt."
else
  echo "Użycie: skrypt.sh --logs [liczba]"
  exit 1
fi
