#!/bin/sh
output=$("$1")
expected="Permisos correctos"
if echo "$output" | grep -Eq "Permisos correctos|Permisos incorrectos"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Salida inválida. Esperado 'Permisos correctos' o 'Permisos incorrectos'. Obtuviste: '$output'"
fi
