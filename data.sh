#!/bin/bash

if [[ $1 == "--date" ]]; then
  # Pobieranie dzisiejszej daty
  current_date=$(date +"%Y-%m-%d")

  # Wyświetlanie dzisiejszej daty
  echo "Dzisiejsza data: $current_date"
else
  echo "Użycie: skrypt.sh --date"
  exit 1
fi
