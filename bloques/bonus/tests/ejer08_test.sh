#!/bin/bash

SCRIPT="./soluciones/ejercicio08.sh"
DIR="/tmp/test_search"
mkdir -p "$DIR"

echo "hola mundo" > "$DIR/file1.txt"
echo "error grave" > "$DIR/file2.txt"
echo "todo bien" > "$DIR/file3.txt"
echo "error leve" > "$DIR/file4.txt"

output=$($SCRIPT "$DIR" "error")

if echo "$output" | grep -q "file2.txt" && echo "$output" | grep -q "file4.txt" && \
   ! echo "$output" | grep -q "file1.txt" && ! echo "$output" | grep -q "file3.txt"; then
    echo "✅ Búsqueda correcta."
    exit 0
else
    echo "❌ Búsqueda incorrecta."
    exit 1
fi
