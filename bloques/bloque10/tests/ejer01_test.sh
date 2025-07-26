#!/bin/sh

output=$("$1")
if echo "$output" | grep -q "Conectividad con 8.8.8.8 confirmada"; then
    echo "✅ PASS"
elif echo "$output" | grep -q "No se pudo establecer conexión"; then
    echo "✅ PASS (sin conexión)"
else
    echo "❌ FAIL: No se detectó un mensaje válido de conectividad"
fi
