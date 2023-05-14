#!/bin/bash

chmod +x ./search_word.sh

echo "Проверяем скрипт на первый тест..."
./search_word.sh input output
if [[ $? -eq 1 ]]
then
    echo "Скрипт успешно прошел первый тест!"
else
    echo "Тест провален :("
    exit 1
fi

echo ""

echo "Проверяем скрипт на второй тест..."
./search_word.sh input output Макс Маргарита
if [[ $? -eq 1 ]]
then
    echo "Скрипт успешно прошел второй тест!"
else
    echo "Тест провален :("
    exit 1
fi

echo ""

echo "Проверяем скрипт на третий тест..."
./search_word.sh aaaaaaaaa output Максим
if [[ $? -eq 1 ]]
then
    echo "Скрипт успешно прошел последний тест! Скрипт работает исправно."
else
    echo "Тест провален :("
    exit 1
fi




