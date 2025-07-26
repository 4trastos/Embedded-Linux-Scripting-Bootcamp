#!/bin/bash
port=22
output=$("$1" "$port")
if echo "$output" | grep -Eq "^En uso$|^Libre$"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Debe imprimir 'En uso' o 'Libre'. Salida obtenida: '$output'"
fi
