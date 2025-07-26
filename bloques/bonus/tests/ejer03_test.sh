#!/bin/bash

SCRIPT="./soluciones/ejercicio03.sh"

SRC_DIR="/tmp/test_backup_src"
DST_DIR="/tmp/test_backup_dst"

rm -rf "$SRC_DIR" "$DST_DIR"
mkdir -p "$SRC_DIR" "$DST_DIR"

# Crear archivos en SRC
echo "old" > "$SRC_DIR/file1.txt"
echo "old" > "$SRC_DIR/file2.txt"

# Copia inicial (todos deben copiarse)
output=$($SCRIPT "$SRC_DIR" "$DST_DIR")

count=$(echo "$output" | grep -oE '[0-9]+' | head -1)

if [[ "$count" == "2" ]] && [[ -f "$DST_DIR/file1.txt" ]] && [[ -f "$DST_DIR/file2.txt" ]]; then
    echo "✅ Copia inicial correcta."
else
    echo "❌ Fallo en copia inicial."
    exit 1
fi

# Cambiar solo file2
echo "new" > "$SRC_DIR/file2.txt"

# Copia incremental (solo file2 debe copiarse)
output2=$($SCRIPT "$SRC_DIR" "$DST_DIR")
count2=$(echo "$output2" | grep -oE '[0-9]+' | head -1)

if [[ "$count2" == "1" ]]; then
    echo "✅ Copia incremental correcta."
    exit 0
else
    echo "❌ Fallo en copia incremental."
    exit 1
fi
