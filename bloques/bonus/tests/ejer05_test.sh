#!/bin/bash

SCRIPT="./soluciones/ejercicio05.sh"

DIR="/tmp/test_lines"
mkdir -p "$DIR"
echo -e "line1\nline2\nline3" > "$DIR/file1.txt"
echo -e "line1\nline2" > "$DIR/file2.txt"
echo "no txt file here" > "$DIR/file3.log"

output=$($SCRIPT "$DIR")
expected="Total líneas: 5"

if [[ "$output" == "$expected" ]]; then
    echo "✅ Contador líneas correcto."
    exit 0
else
    echo "❌ Contador líneas incorrecto."
    exit 1
fi
