#!/bin/sh
output=$("$1" Mario)
expected="Hola, Mario"

if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado '$expected'"
fi
