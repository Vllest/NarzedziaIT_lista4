#!/bin/bash

if [[ $1 != "--logs" ]]; then
  echo "Użycie: skrypt.sh --logs"
  exit 1
fi

for (( i=1; i<=100; i++ )); do
  filename="log${i}.txt"
  echo "Nazwa pliku: $filename" > "$filename"
  echo "Nazwa skryptu: skrypt.sh" >> "$filename"
  echo "Data utworzenia: $(date)" >> "$filename"
done

echo "Utworzono 100 plików logx.txt."
