#!/bin/bash

SCRIPT="./soluciones/ejercicio07.sh"
DIR="/tmp/test_empty"
mkdir -p "$DIR"

# Crear archivos vacíos y no vacíos
touch "$DIR/empty1.txt"
touch "$DIR/empty2.txt"
echo "data" > "$DIR/not_empty.txt"

output=$($SCRIPT "$DIR")
count=$(echo "$output" | grep -oE '[0-9]+' | head -1)

if [[ "$count" == "2" ]] && [[ -f "$DIR/not_empty.txt" ]] && \
   [[ ! -f "$DIR/empty1.txt" ]] && [[ ! -f "$DIR/empty2.txt" ]]; then
    echo "✅ Eliminación correcta de archivos vacíos."
    exit 0
else
    echo "❌ Fallo al eliminar archivos vacíos."
    exit 1
fi
