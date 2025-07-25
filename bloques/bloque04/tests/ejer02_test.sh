#!/bin/sh
output=$("$1" rojo azul verde)
expected="Argumentos: rojo azul verde"

if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: '$output' != '$expected'"
fi
