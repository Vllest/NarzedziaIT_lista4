#!/bin/bash

if [[ $1 != "--logs" ]]; then
  echo "Użycie: skrypt.sh --logs <liczba_plików>"
  exit 1
fi

if [[ ! $2 =~ ^[0-9]+$ ]]; then
  echo "Podaj poprawną liczbę plików."
  exit 1
fi

liczba_plikow=$2

for (( i=1; i<=$liczba_plikow; i++ )); do
  filename="log${i}.txt"
  echo "Nazwa pliku: $filename" > "$filename"
  echo "Nazwa skryptu: skrypt.sh" >> "$filename"
  echo "Data utworzenia: $(date)" >> "$filename"
done

echo "Utworzono $liczba_plikow plików logx.txt."
