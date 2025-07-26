#!/bin/sh
output=$(echo "1" | "$1")
if echo "$output" | grep -q "Decir Hola"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se detectó opción 'Decir Hola' o no se ejecutó correctamente."
fi
