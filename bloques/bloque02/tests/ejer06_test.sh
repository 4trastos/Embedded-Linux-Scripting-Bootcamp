#!/bin/bash
src="tests/ejer06_src.txt"
dst="tests/ejer06_dst.txt"
echo "Contenido de prueba" > "$src"
rm -f "$dst"
"$1" "$src" "$dst"
if cmp -s "$src" "$dst"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: El archivo destino no coincide con el origen."
fi
rm -f "$src" "$dst"
