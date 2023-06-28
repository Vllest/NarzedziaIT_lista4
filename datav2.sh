#!/bin/bash

if [[ $1 == "--date" || $1 == "-d" ]]; then
  # Pobieranie dzisiejszej daty
  current_date=$(date +"%Y-%m-%d")

  # Wyświetlanie dzisiejszej daty
  echo "Dzisiejsza data: $current_date"
else
  echo "Użycie: skrypt.sh --date (-d)"
  exit 1
fi
