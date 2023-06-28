#!/bin/bash

create_log_files() {
    if [ -z "$1" ] || [ $1 -le 0 ]; then
        echo "Invalid argument for --logs [-logs n_of_files]"
        return
    fi

    for (( i=1; i<=$1; i++))
    do
        echo "${i} $(date) skrypt.sh" > logs$i.txt
    done
}

for (( i=1; i<=$#; i++))
do
    if [ ${!i} == "--date" ] || [ ${!i} == "-d" ]; then
        date
    elif [ ${!i} == "--logs" ] || [ ${!i} == "-l" ]; then
        number_of_logs=$((i+1))
        create_log_files ${!number_of_logs}
    elif [ ${!i} == "--help" ] || [ ${!i} == "-h" ]; then
        echo "Syntax: skrypt.sh [--help|--date|--logs]"
        echo "Available options:"
        echo "--help, -h             Print helps"
        echo "--date, -d             Print current date"
        echo "--logs, -l number_of_files Create number_of_files log files with index, date and script used"
    fi
done
