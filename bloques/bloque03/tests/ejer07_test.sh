#!/bin/bash
output1=$("$1")
output2=$("$1" test)

if echo "$output1" | grep -q "Uso:" && [ "$output2" = "" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: La validación de argumentos no funciona como se espera"
fi
