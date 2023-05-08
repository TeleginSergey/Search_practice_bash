#!/bin/bash
if [[ $# -lt 3 ]]
then
    echo "Not enough arguments. The programm terminated with an error"
    exit 1
elif [[ $# -gt 3 ]]
then
    echo "Too much arguments. The programm terminated with an error"
    exit 1
fi

if [[ ! -f $1 || ! -f $2 ]]
then
    echo "Arguments $1 and $2 or one of this arguments isn't file. The programm terminated with an error"
    exit 1
fi

count=$(grep -c "$3" "$1")
echo "$count" > "$2"
#Немного улучшенная версия. Более удобная, если пользователю надо найти более 1 слова
#echo "$count $3" >> "$2"
echo "The programm was completed successfully"