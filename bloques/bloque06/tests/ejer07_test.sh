#!/bin/bash
# Verifica si el script contiene uso de trap
if grep -q "trap" "$1"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se encontró uso de 'trap' para capturar señales"
fi
