#!/bin/bash
output=$("$1")
if echo "$output" | grep -q "El sistema lleva activo"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: El mensaje no contiene 'El sistema lleva activo'"
fi
