#!/bin/bash

SCRIPT="./soluciones/ejercicio06.sh"
DIR="/tmp/test_ext"
mkdir -p "$DIR"

echo "file1.txt" > "$DIR/file1.txt"
echo "file2.log" > "$DIR/file2.log"
echo "file3.txt" > "$DIR/file3.txt"

output=$($SCRIPT "$DIR" "txt")

if echo "$output" | grep -q "file1.txt" && echo "$output" | grep -q "file3.txt"; then
    echo "✅ Listado archivos correcto."
    exit 0
else
    echo "❌ Listado archivos incorrecto."
    exit 1
fi
