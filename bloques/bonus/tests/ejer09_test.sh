#!/bin/bash

SCRIPT="./soluciones/ejercicio09.sh"
DIR="/tmp/test_wordcount"
mkdir -p "$DIR"

echo "hola mundo" > "$DIR/file1.txt"
echo "una palabra más" > "$DIR/file2.txt"

output=$($SCRIPT "$DIR")
expected="Total palabras: 5"

if [[ "$output" == "$expected" ]]; then
    echo "✅ Conteo de palabras correcto."
    exit 0
else
    echo "❌ Conteo de palabras incorrecto."
    exit 1
fi
