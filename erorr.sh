#!/bin/bash

if [[ $1 == "--error" ]]; then
  if [[ -z $2 ]]; then
    number_of_files=100
  else
    number_of_files=$2
  fi

  for (( i=1; i<=$number_of_files; i++ )); do
    dir_name="error${i}"
    file_name="${dir_name}/error${i}.txt"

    # Tworzenie katalogu
    mkdir -p "$dir_name"

    # Zapisywanie informacji do pliku
    echo "Nazwa pliku: error${i}.txt" > "$file_name"
    echo "Nazwa skryptu: skrypt.sh" >> "$file_name"
    echo "Data utworzenia: $(date)" >> "$file_name"
  done

  echo "Utworzono $number_of_files plików errorx/errorx.txt."
else
  echo "Użycie: skrypt.sh --error [liczba]"
  exit 1
fi
